import sys
import os

def patch_server(file_path, server_string):
    offset = 0x100010
    server_bytes = server_string.encode('utf-8') + b'\x00'

    with open(file_path, 'rb+') as f:
        # Seek to offset and read forward to find where the original null-terminated string ends
        f.seek(offset)
        original_pos = f.tell()
        while True:
            byte = f.read(1)
            if not byte or byte == b'\x00':
                break

        end_pos = f.tell()  # position right after first null

        # Overwrite the region with server string and nulls
        f.seek(offset)
        pad_length = end_pos - offset
        padded_data = server_bytes.ljust(pad_length, b'\x00')
        f.write(padded_data)

    print(f"Patched {file_path} at 0x{offset:X} with server string: {server_string}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <binary_file> <server_string>")
        sys.exit(1)

    binary_file = sys.argv[1]
    server_str = sys.argv[2]

    if not os.path.isfile(binary_file):
        print(f"Error: File '{binary_file}' not found.")
        sys.exit(1)

    try:
        patch_server(binary_file, server_str)
    except Exception as e:
        print(f"Error: {e}")
        sys.exit(1)
