import os
import csv

def write_list_to_csv(string_list, csv_path):
    # If the CSV file already exists, delete it
    if os.path.exists(csv_path):
        os.remove(csv_path)
    
    # Write the CSV file with a single column "sequence"
    with open(csv_path, mode='w', newline='') as csv_file:
        writer = csv.writer(csv_file)
        # Write header
        writer.writerow(['sequence'])
        # Write each string as a new row in the "sequence" column
        for item in string_list:
            writer.writerow([item])

# Example usage:
if __name__ == "__main__":
    my_strings = ["Town", "banana", "cherry"]
    csv_file_path = "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/running_csv.csv"
    write_list_to_csv(my_strings, csv_file_path)
    print(f"CSV file created at {csv_file_path}")
