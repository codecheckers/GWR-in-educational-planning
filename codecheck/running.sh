#!/bin/sh


# This script is used to copy over the results into the codecheck
# directory.  Normally this can be done by the codecheck package, but
# here the results directory is stored outside of github (because it
# is too large).  So I use this script to copy them into results/ and
# then the codecheck package can transfer them into the outputs/
# directory (where it expects them).

## Point to the location of the pdf where we are going to copy outputs.
PDF="/home/stephen/archive/proj/2022/gwr/Replication files/Rplots.pdf"

pdftk ${PDF} cat 1 output results/fig4.pdf
pdftk ${PDF} cat 2 output results/fig8.pdf


cp "/home/stephen/archive/proj/2022/gwr/Replication files/Tables/ModelOLS-codecheck.csv" results/table3.csv

cp ../code.Rout results/

## I am also copying the Rplots.pdf into the github repo (but not put it in the
## manifest for now).

cp "$PDF" results/


