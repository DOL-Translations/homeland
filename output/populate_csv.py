import os
import sys
import csv
import json
import struct

# Function to read Shift-JIS encoded strings from a binary file
def read_shiftjis_string(file):
    string_bytes = bytearray()
    while True:
        byte = file.read(1)
        if byte == b'\x00':
            break
        # Check if the byte is within ASCII range (0x00 - 0x7F)
        if byte[0] < 0x20 or byte[0] >= 0x7F:  # Non-ASCII range
            # Append hex value in brackets for non-ASCII characters
            string_bytes.extend(f"[{byte.hex().upper()}]".encode())
        else:
            # Regular ASCII or Shift-JIS byte
            string_bytes.extend(byte)
    return string_bytes.decode('shift_jis', errors='replace')

def main():
    if len(sys.argv) != 2:
        print("Usage: python script.py <Raw Directory>")
        return

    raw_directory = sys.argv[1]

    # Ensure the provided directory exists
    if not os.path.isdir(raw_directory):
        print(f"The directory {raw_directory} does not exist.")
        return

    # Prepare to write CSV with header
    csv_filename = os.path.join(raw_directory, "cndy_master.csv")
    with open(csv_filename, 'w', newline='', encoding='utf-8') as csvfile:
        fieldnames = ['Name', 'Strings', 'Size', 'Start Addrs']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()  # Write the header

        # Process each .cndy file in the Raw directory
        for filename in os.listdir(raw_directory):
            if filename.endswith('.cndy'):
                binary_filename = os.path.join(raw_directory, filename)

                try:
                    # Open binary file and extract information
                    with open(binary_filename, 'rb') as binfile:
                        start_addr = 0  # Assuming start address is fixed; can adjust based on requirements

                        # Read the number of strings and total size
                        num_strings, total_size = struct.unpack('>II', binfile.read(8))

                        # Prepare row for CSV
                        row = {
                            'Name': filename,
                            'Strings': str(num_strings),
                            'Size': str(total_size),
                            'Start Addrs': hex(start_addr)  # Adjust as necessary
                        }

                        # Update the CSV
                        writer.writerow(row)

                        # Read strings from the binary file
                        strings = []
                        for _ in range(num_strings):
                            string = read_shiftjis_string(binfile)
                            strings.append(string)

                        # Create JSON data
                        json_data = {
                            "FileName": filename,
                            "Number of Strings": row['Strings'],
                            "Size (bytes)": row['Size'],
                            "Address": row['Start Addrs'],
                            "Strings": strings
                        }

                        # Write JSON data to file
                        json_filename = os.path.join(raw_directory, filename + ".json")
                        with open(json_filename, 'w', encoding='utf-8') as jsonfile:
                            json.dump(json_data, jsonfile, ensure_ascii=False, indent=4)
                        print(f"Generated {json_filename}")

                except FileNotFoundError:
                    print(f"Binary file {binary_filename} not found.")
                except Exception as e:
                    print(f"Error processing {binary_filename}: {e}")

if __name__ == "__main__":
    main()
