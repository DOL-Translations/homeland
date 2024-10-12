import codecs
import sys
import argparse

def read_shiftjis_range(input_file, output_file, start_addr, end_addr):
    # Open the binary file and extract the byte range
    with open(input_file, 'rb') as f:
        f.seek(start_addr)
        data = f.read(end_addr - start_addr + 1)
    
    result = []
    current_string = []
    consecutive_nulls = False  # Tracks consecutive null bytes
    
    i = 0
    while i < len(data):
        byte = data[i]
        
        # Null byte signifies the end of a string
        if byte == 0x00:
            if not consecutive_nulls:
                if current_string:
                    result.append(''.join(current_string))
                    current_string = []
                result.append('\n')  # Add a newline between strings
                consecutive_nulls = True  # Mark that we encountered a null byte
            i += 1
            continue
        else:
            consecutive_nulls = False  # Reset consecutive_nulls when non-null byte is encountered
        
        # Handle newline character
        if byte == 0x0A:
            current_string.append(r'\n')
            i += 1
            continue
        
        # Handle 0xFF or undefined characters
        if byte == 0xFF:
            current_string.append('[FF]')
            i += 1
            continue
        
        # Handle 2-byte Shift-JIS characters
        if 0x81 <= byte <= 0x9F or 0xE0 <= byte <= 0xEF:
            if i + 1 < len(data):
                try:
                    char_bytes = data[i:i+2]
                    char = char_bytes.decode('shift_jis')
                    current_string.append(char)
                    i += 2
                    continue
                except UnicodeDecodeError:
                    # In case of decoding failure, treat as undefined byte
                    current_string.append(f'[{char_bytes[0]:02X}][{char_bytes[1]:02X}]')
                    i += 2
                    continue
        
        # Handle single-byte characters
        try:
            char = bytes([byte]).decode('shift_jis')
            current_string.append(char)
        except UnicodeDecodeError:
            current_string.append(f'[{byte:02X}]')
        
        i += 1
    
    # Add the last string if any
    if current_string:
        result.append(''.join(current_string))
    
    # Write the result to the output file
    with open(output_file, 'w', encoding='utf-8') as out_f:
        out_f.write(''.join(result))


if __name__ == "__main__":
    # Set up argument parsing
    parser = argparse.ArgumentParser(description='Extract and decode a range of bytes as Shift-JIS from a binary file.')
    parser.add_argument('input_file', type=str, help='Path to the input binary file.')
    parser.add_argument('output_file', type=str, help='Path to the output text file.')
    parser.add_argument('start_addr', type=lambda x: int(x, 16), help='Start address in hexadecimal (e.g., 0x00).')
    parser.add_argument('end_addr', type=lambda x: int(x, 16), help='End address in hexadecimal (e.g., 0xFF).')
    
    # Parse the command-line arguments
    args = parser.parse_args()
    
    # Call the function to process the file
    read_shiftjis_range(args.input_file, args.output_file, args.start_addr, args.end_addr)
