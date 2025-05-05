import sys
import os

def main():
    dropped_files = sys.argv

    if len(dropped_files) != 4:
        print("2011 Jay Harland / JaytheHam")
        print("Homeland for Gamecube\n")
        print("Extracts all the \"CNDY\" files from \"all.bin\" data archive")
        print("Usage: python allbinext.py <all.bin> <Start.dol> <Output Directory>")
        return

    all_bin_path = dropped_files[1]
    start_dol_path = dropped_files[2]
    output_directory = dropped_files[3]  # User-specified output directory for extracted files

    # Create the user-specified output directory if it doesn't exist
    os.makedirs(output_directory, exist_ok=True)

    # Create a log file for missing CNDY files in the same output directory
    log_file_path = os.path.join(output_directory, "missing_files.log")
    with open(log_file_path, 'w') as log_file:
        log_file.write("Missing CNDY Files Log:\n\n")

        # Open the all.bin and Start.dol files
        with open(all_bin_path, 'rb') as all_bin, open(start_dol_path, 'rb') as start_dol:
            cur_file_offset = 0
            next_file_offset = 1
            files_done = 0
            total_cndy_found = 0  # Total occurrences of "CNDY"
            cndy_offsets = []  # To store the offsets of found CNDY headers

            # Set the position in the Start.dol file
            start_dol.seek(0xE22D4)

            while next_file_offset != 0:
                # Read the current file offset
                temp_word = start_dol.read(4)
                cur_file_offset = int.from_bytes(temp_word, byteorder='big')

                # Read the next file offset
                temp_word = start_dol.read(4)
                next_file_offset = int.from_bytes(temp_word, byteorder='big')

                # Go back 4 bytes to get the correct file size
                start_dol.seek(-4, os.SEEK_CUR)
                file_size = next_file_offset - cur_file_offset

                # Ensure the file size is valid
                if file_size <= 0:
                    continue

                # Read the file data from all.bin
                all_bin.seek(cur_file_offset)
                output = all_bin.read(file_size)

                # Check for the "CNDY" header
                if len(output) >= 4 and output[:4] == b'CNDY':
                    cndy_offsets.append(cur_file_offset)  # Store the offset of the found CNDY header

                    # Write the extracted CNDY file
                    hex_address = f"{cur_file_offset:06X}"  # Convert to hex, zero-padded to 6 digits
                    output_file_name = f"hl_{files_done}_{hex_address}.cndy"
                    output_file_path = os.path.join(output_directory, output_file_name)

                    with open(output_file_path, 'wb') as write_file:
                        write_file.write(output)

                    files_done += 1
                    total_cndy_found += 1  # Increment the count of found CNDY files

                    if files_done % 500 == 0:
                        print(f"{files_done} files done, at: {next_file_offset:X}")

        # After processing all files, log the found CNDY headers that did not match the start of an extracted file
        extracted_offsets = {int(f.split('_')[1], 16) for f in os.listdir(output_directory) if f.endswith('.cndy')}
        
        for cndy_offset in cndy_offsets:
            if cndy_offset not in extracted_offsets:
                log_file.write(f"Found CNDY header at offset {cndy_offset:X} (not extracted)\n")

        # Print the summary of extraction
        print(f"\nTotal CNDY occurrences in all.bin: {total_cndy_found}")
        print(f"Files extracted: {files_done}")
        print(f"Missing files logged: check {log_file_path}")

if __name__ == "__main__":
    main()