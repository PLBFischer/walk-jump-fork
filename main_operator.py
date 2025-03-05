# main.py
import os
import csv
import numpy as np

import subprocess

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

wt_seq = "MANVEKMSVAVTPQQAAVMREAVEAGEYATASEIVREAVRDWLAKRELRHDDIRRLRQLWDEGKASGRPEPVDFDALRKEARQKLTEVPPNGR"
def random_mutant_generator(wt_seq,num,mode,alphabet='ARNDCEQGHILKMFPSTWYV'):
    random_list = []
    for _ in range(num):
        # For the expensive method, we don't have the constraint of only introducing 4 mutations during the random first round, as we do for the cheap method.
        # I haven't experimented with this a lot, but currently for the first round I am just choosing a couple of mutants that are up to 8 mutations away from WT.
        if mode == "expensive":
            # TODO
            n = np.random.choice(np.arange(1,9))
        elif mode == "cheap":
            n = np.random.choice(np.arange(1,5))
        elif mode == "genetic":
            n = 1
        else:
            raise Exception("Something went wrong!")
        i_arr = np.random.choice(np.arange(len(wt_seq)),size = n, replace = False)
        j_arr = np.random.choice(np.arange(len(alphabet)),size = n, replace = True)
        new_seq = wt_seq
        for k in range(n):
            i = i_arr[k]
            j = j_arr[k]
            char = alphabet[j]
            new_seq = new_seq[:i] + char + new_seq[i+1:]
        random_list.append(new_seq)
            
    return random_list

def run_train_in_env_b():
    # Path to Environment B (using the full path)
    env_b_path = "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk_jump_co"
    # Path to the script that should run in Environment B.
    # Adjust this path if necessary.
    script_path = "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/script_env_b_train.py"
    
    command = [
        "conda", "run", "-p", env_b_path, "python", script_path
    ]
    
    result = subprocess.run(command, capture_output=True, text=True)
    
    if result.returncode != 0:
        print("Error running script in Environment B:")
        print(result.stderr)
    else:
        print(result.stdout)

def run_sample_in_env_b():
    # Path to Environment B (using the full path)
    env_b_path = "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk_jump_co"
    # Path to the script that should run in Environment B.
    # Adjust this path if necessary.
    script_path = "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/script_env_b_sample.py"
    
    command = [
        "conda", "run", "-p", env_b_path, "python", script_path
    ]
    
    result = subprocess.run(command, capture_output=True, text=True)
    
    if result.returncode != 0:
        print("Error running script in Environment B:")
        print(result.stderr)
    else:
        print(result.stdout)

# Example usage:
if __name__ == "__main__":
    mut_seqs = random_mutant_generator(wt_seq,10,"expensive")
    csv_file_path = "/n/netscratch/mahadevan_lab/Everyone/pafischer/walk-jump-fork/running_csv.csv"
    write_list_to_csv(mut_seqs, csv_file_path)
    print(f"CSV file created at {csv_file_path}")
    run_train_in_env_b()
    run_sample_in_env_b()
    print("Finished Everything")

