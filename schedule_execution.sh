#!/bin/bash

for f in run_ner_new_lr3e-5_s*
do
  echo "Processing $f file..."
  sbatch $f
  wait
done