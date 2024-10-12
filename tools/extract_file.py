import sys

def extract_bytes(output_file, input_file, start_hex, size):
    try:
        # Convert start address from hex to integer
        start = int(start_hex, 16)
        size = int(size)

        if start < 0 or size <= 0:
            print("Error: start position must be non-negative and size must be positive.")
            return
        with open(input_file, 'rb') as infile:
            infile.seek(start)
            data = infile.read(size)
        with open(output_file, 'wb') as outfile:
            outfile.write(data)

    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 5:
        print("Usage: extract outputfile inputfile start_hex size")
    else:
        output_file = sys.argv[1]
        input_file = sys.argv[2]
        start_hex = sys.argv[3]
        size = sys.argv[4]
        extract_bytes(output_file, input_file, start_hex, size)
