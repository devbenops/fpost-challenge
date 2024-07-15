#!/usr/bin/env python3

import re
from collections import defaultdict

def count_requests_per_host(log_file_path):
    """
    The function will reads the log file provided and counts the number of requests made by each host.

    Arguments needed : log_file_path, the path to the log file.
        
    """
    # Initialize a dictionary to keep track of request counts for each host
    host_request_counts = defaultdict(int)
    
    # Regex pattern to match the log format and extract the hostname
    log_pattern = re.compile(r'^(?P<host>\S+) - - \[.*?\] ".*?" \d+ \d+.*$')

    try:

        with open(log_file_path, 'r') as log_file:
            for line in log_file:
                match = log_pattern.match(line)
                if match:
                    host = match.group('host')
                    host_request_counts[host] += 1
                    
    except FileNotFoundError:
        print(f"Error: The file {log_file_path} does not exist.")
        return None
    
    except IOError as e:
        print(f"Error reading the file {log_file_path}: {e}")
        return None

    return host_request_counts

def save_summary_to_file(request_summary, output_file_path):
    """
    Writes the summary of request counts to an output file!!

    """
    try:

        with open(output_file_path, 'w') as output_file:
            
            # Write each host and its request count to the file
            for host, count in request_summary.items():
                output_file.write(f"{host} {count}\n")
    except IOError as e:

        print(f"Error writing to the file {output_file_path}: {e}")

def main():
    # Path to the log file to be analyzed
    log_file_path = './fp-sre-challenge.log'
    
    # Path to the file where the summary will be saved
    output_file_path = './access_log_summary.txt'

    try:

        request_summary = count_requests_per_host(log_file_path)
        if request_summary is not None:
            
            save_summary_to_file(request_summary, output_file_path)
            print(f"Summary successfully written to {output_file_path}")
            
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

if __name__ == "__main__":
    main()
