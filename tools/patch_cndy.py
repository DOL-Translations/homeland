import os
import sys
import json
import re

# Function to replace [FExx] codes with actual hex values (keeps string intact until final encoding)
def replace_hex_codes(string):
    def hex_replacer(match):
        hex_value = match.group(1)
        return chr(int(f"FE{hex_value}", 16))
    
    # Use regular expression to find hex patterns like [FExx]
    return re.sub(r'\[FE([0-9A-Fa-f]{2})\]', hex_replacer, string)

# Function to extract the starting positions of strings (offsets) in the binary data
def extract_string_offsets(data, start_address, num_strings):
    offsets = []
    current_offset = start_address

    for _ in range(num_strings):
        if current_offset >= len(data):
            break

        offsets.append(current_offset)

        # Move to the next string (find the next null terminator)
        while current_offset < len(data) and data[current_offset] != 0x00:
            current_offset += 1

        # Move past the null terminator
        current_offset += 1

    return offsets

# Function to find the next null terminator after a given offset
def find_next_null(data, start_offset, block_end):
    null_offset = start_offset
    while null_offset < block_end and data[null_offset] != 0x00:
        null_offset += 1
    return null_offset

# Function to process JSON files and repack strings into raw binary data
def process_json_files(raw_directory, json_directory, output_directory):
    os.makedirs(output_directory, exist_ok=True)

    for json_filename in os.listdir(json_directory):
        if json_filename.endswith('.json'):
            json_file_path = os.path.join(json_directory, json_filename)

            with open(json_file_path, 'r', encoding='utf-8') as json_file:
                json_data = json.load(json_file)

                strings = json_data.get("Strings", [])
                num_strings = int(json_data.get("Number of Strings", 0))
                total_size = int(json_data.get("Size (bytes)", 0))
                address = int(json_data.get("Address", "0x0"), 16)
                start_address = address + 0x8  # Strings start after first 8 bytes

                # Open the original binary file
                raw_binary_path = os.path.join(raw_directory, json_data["FileName"].replace(".json", ".cndy"))
                with open(raw_binary_path, 'rb') as raw_file:
                    original_data = bytearray(raw_file.read())

                # Prepare the output data (copy the original data fully)
                output_data = original_data[:]

                # Insert num_strings and total_size into the binary at the given address
                output_data[address:address + 4] = num_strings.to_bytes(4, byteorder='big')
                output_data[address + 4:address + 8] = total_size.to_bytes(4, byteorder='big')

                # Extract original string offsets
                original_offsets = extract_string_offsets(original_data, start_address, num_strings)
                if len(original_offsets) != num_strings:
                    print(f"Warning: Expected {num_strings} strings but found {len(original_offsets)} offsets in {json_filename}")

                # Calculate the end of the block (total size + 4 bytes)
                end_address = start_address + total_size + 4

                cut_out_count = 0

                # Insert strings at the original offsets
                for idx, (string, string_offset) in enumerate(zip(strings, original_offsets)):
                    processed_string = replace_hex_codes(string)
                    encoded_string = processed_string.encode('shift_jis', errors='replace')

                    # Find the next null terminator after this string
                    null_terminator_offset = find_next_null(original_data, string_offset, end_address)

                    # Maximum size for the string is up to the next null terminator
                    max_size = null_terminator_offset - string_offset

                    if len(encoded_string) > max_size:
                        # Truncate the string if it exceeds the available space
                        truncated_string = encoded_string[:max_size]
                        cut_bytes = len(encoded_string) - len(truncated_string)
                        print(f"Truncating string at index {idx} in {json_data['FileName']}: \"{string}\". Cut out {cut_bytes} bytes.")
                        encoded_string = truncated_string
                        cut_out_count += 1

                    # Overwrite the string at its original position
                    output_data[string_offset:string_offset + len(encoded_string)] = encoded_string

                    # Null pad to the next string's starting point
                    next_null_offset = find_next_null(original_data, string_offset + len(encoded_string), end_address)

                    # Null pad between the current string and the next null terminator
                    pad_length = next_null_offset - (string_offset + len(encoded_string))
                    for i in range(pad_length):
                        output_data[string_offset + len(encoded_string) + i] = 0x00

                # Make sure the rest of the original data after the string block is preserved
                if end_address < len(original_data):
                    output_data[end_address:] = original_data[end_address:]

                # Ensure null padding to the end of the block if necessary
                if end_address > len(output_data):
                    output_data.extend(b'\x00' * (end_address - len(output_data)))

                # Write the modified data to the output file
                output_file_path = os.path.join(output_directory, json_data["FileName"].replace(".json", ".cndy"))
                with open(output_file_path, 'wb') as output_file:
                    output_file.write(output_data)

# Main script execution
if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python patch_cndy.py <Raw Directory> <JSON Directory> <Output Directory>")
        sys.exit(1)

    raw_dir = sys.argv[1]
    json_dir = sys.argv[2]
    output_dir = sys.argv[3]

    process_json_files(raw_dir, json_dir, output_dir)
