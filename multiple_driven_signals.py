import re

# Define a function to find multiple driven errors in Verilog code
def find_multiple_driven_errors(verilog_code):
    # Regular expression pattern to match non-blocking and blocking assignments
    assignment_pattern = r'(?P<assign>\w+)\s*(?P<op><=|=)\s*(?P<value>.+?);'
    
    # Find all assignments in the code
    assignments = re.findall(assignment_pattern, verilog_code)
    
    # Create a dictionary to store signal assignments
    signal_assignments = {}
    
    for assignment in assignments:
        signal, op, value = assignment
        if signal in signal_assignments:
            signal_assignments[signal].append((op, value))
        else:
            signal_assignments[signal] = [(op, value)]
    
    # Find signals with more than one assignment
    multiple_driven_signals = {signal: assignments for signal, assignments in signal_assignments.items() if len(assignments) > 1}
    
    return multiple_driven_signals

# Function to read Verilog code from a file
def read_verilog_code_from_file(file_path):
    with open(file_path, 'r') as file:
        return file.read()

# Test the script with a Verilog code file
verilog_file_path = 'your_verilog_code.v'  # Replace with the path to your Verilog code file

# Read the Verilog code from the file
verilog_code = read_verilog_code_from_file(verilog_file_path)

# Find multiple driven errors in the code
errors = find_multiple_driven_errors(verilog_code)

if errors:
    print("Multiple driven errors found:")
    for signal, assignments in errors.items():
        print(f"Signal: {signal}")
        for op, value in assignments:
            print(f"  {op} {value}")
else:
    print("No multiple driven errors found.")

