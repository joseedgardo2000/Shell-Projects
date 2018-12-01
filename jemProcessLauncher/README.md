# jemProcessLauncher

A tool to launch n process in parallel in Linux

## Usage

    jemProcessLauncher.sh <number-of-process-to-run> <process-to-run>

### Examples
#### Launching 4 process without parameters in parallel
    ./jemProcessLauncher.sh 4 proceso.sh
#### Launching 5 process with parameters in parallel
    ./jemProcessLauncher.sh 5 "p.sh 2"
#### Launching 6 process with parameters in parallel and sending the output to a file
    ./jemProcessLauncher.sh 6 "p.sh 2" > info.out
    
## Install

Just copy the file: jemProcessLauncher.sh to the directory of your preference and be sure you can access to run it.
