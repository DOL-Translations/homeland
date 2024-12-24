import sys
import csv

def main():
    if len(sys.argv) != 2:
        print("Usage: python script.py cndy_master.csv")
        return

    csv_filename = sys.argv[1]

    # Read the CSV file with csv.DictReader
    with open(csv_filename, newline='', encoding='utf-8-sig') as csvfile:
        reader = csv.DictReader(csvfile)
        
        # Normalize header names
        normalized_headers = [header.strip() for header in reader.fieldnames]

        # Check if 'Name' column exists in normalized headers
        if 'Name' not in normalized_headers:
            print("Error: 'Name' column not found in CSV headers.")
            return

        # Process the rest of the rows
        for row_number, row in enumerate(reader, start=1):
            # Check if 'Name' field is blank
            if not row['Name']:
                print(f"Empty 'Name' field found in row {row_number}. Stopping output.")
                break

            # Print the keys and values of each row
            print(f"Row {row_number} values: {list(row.values())}")

            # Access 'Name' column value
            name = row['Name']

            # Check if 'Start Addrs' field is blank
            if not name:
                print(f"Skipping address check for empty 'Name' field in row {row_number}.")
            else:
                start_addr = input(f"Enter the start address for {name}: ")

            # Placeholder for further processing...
            # ...

if __name__ == "__main__":
    main()
