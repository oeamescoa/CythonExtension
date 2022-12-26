#!/bin/bash

printf "\nCreating Python venv for this project..."

# Create virtual environment
python3 -m venv venv

# Activate virtual environment
printf "\n\nThis bash subscript does not have the ability to run
'source ./venv/bin/activate' using WSL2 or change any of the source permissions.\n
Please run: 'source ./venv/bin/activate' from the command line. \n
Then run: 'sh ./run_me_second.sh' from the command line\n\n"


