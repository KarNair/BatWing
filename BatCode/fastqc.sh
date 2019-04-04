#!/bin/bash

	for i in ../1_raw/*.fastq.gz
	do
    		echo "Running $i ..."
    		fastqc -t 1 -o . "$i"
	done
