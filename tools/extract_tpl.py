import sys
import os

def main():
    dropped_files = sys.argv

    if len(dropped_files) != 4:
        print("2011 Jay Harland / JaytheHam")
        print("Homeland for Gamecube\n")
        print("Extracts all the TPL files (0x0020AF30 magic) from \"all.bin\" data archive")
        print("Usage: python allbinext.py <all.bin> <Start.dol> <Output Directory>")
        return

    all_bin_path = dropped_files[1]
    start_dol_path = dropped_files[2]
    output_directory = dropped_files[3]  # User-specified output directory for extracted files

    # Create the user-specified output directory if it doesn't exist
    os.makedirs(output_directory, exist_ok=True)

    # Create a log file for missing TPL files in the same output directory
    log_file_path = os.path.join(output_directory, "missing_files.log")
    with open(log_file_path, 'w') as log_file:
        log_file.write("Missing TPL Files Log:\n\n")

        # Open the all.bin and Start.dol files
        with open(all_bin_path, 'rb') as all_bin, open(start_dol_path, 'rb') as start_dol:
            cur_file_offset = 0
            next_file_offset = 1
            files_done = 0
            total_tpl_found = 0  # Total occurrences of TPL magic
            tpl_offsets = []  # To store the offsets of found TPL headers

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

                # Search for the TPL magic number 0x0020AF30 anywhere in the file
                tpl_magic = b'\x00\x20\xAF\x30'
                tpl_offset = output.find(tpl_magic)

                if tpl_offset != -1:
                    tpl_real_offset = cur_file_offset + tpl_offset
                    tpl_offsets.append(tpl_real_offset)  # Store the offset of the found TPL magic

                    # Write the extracted TPL file
                    hex_address = f"{tpl_real_offset:06X}"  # Convert to hex, zero-padded to 6 digits
                    output_file_name = f"hl_{files_done}_{hex_address}.tpl"
                    output_file_path = os.path.join(output_directory, output_file_name)

                    with open(output_file_path, 'wb') as write_file:
                        write_file.write(output)

                    files_done += 1
                    total_tpl_found += 1  # Increment the count of found TPL files

                    if files_done % 500 == 0:
                        print(f"{files_done} files done, at: {next_file_offset:X}")

        # After processing all files, log the found TPL headers that did not match the start of an extracted file
        extracted_offsets = {int(f.split('_')[1], 16) for f in os.listdir(output_directory) if f.endswith('.tpl')}
        
        for tpl_offset in tpl_offsets:
            if tpl_offset not in extracted_offsets:
                log_file.write(f"Found TPL header at offset {tpl_offset:X} (not extracted)\n")

        # Print the summary of extraction
        print(f"\nTotal TPL occurrences in all.bin: {total_tpl_found}")
        print(f"Files extracted: {files_done}")
        print(f"Missing files logged: check {log_file_path}")

if __name__ == "__main__":
    main()
