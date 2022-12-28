#!/bin/bash

printf "\n\nInstalling required dependencies...\n\n"

# Install required dependencies
pip3 install -r requirements.txt --quiet

printf "Creating Build Extensions...\n\n"
# Build the setup.py file with the .pyx extension
python3 setup.py build_ext --inplace --quiet

printf "\n\nInstalling Build Extensions...\n\n"
# Install the extension
python3 setup.py install --quiet

printf "\n\nRUNNING MAIN PROGRAM
####################\n\n"

# Run the speed test
python3 test_c_vs_p.py

# Cleanup the build directories
rm -dir -f build dist *info

# Remove src files
rm -f fib_c.c*

# Activate virtual environment
printf "\n\nThis bash subscript does not have the ability to 'deactivate' 
the venv using WSL2 or change any of the source permissions.\n
Please run: 'deactivate' from the command line. \n\n"

# dump venv
rm -dir -f ./venv
