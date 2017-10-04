#!/bin/bash

#### Simple script to run MRMD tool ####

cd .

## the file prefix
file_name='GSE5325'

## running MRMD tool
  java -jar 'mrmd.jar' \
       -i "data/GSE5325.arff" \
       -o "output/output_$file_name.txt" \
       -a "output/optimal_$file_name.arff" \
       -df 1 \
       -m 'rf' > "output/mrmd_run_$file_name.log"

## print the runtime
echo "runtime: $SECONDS secs"

