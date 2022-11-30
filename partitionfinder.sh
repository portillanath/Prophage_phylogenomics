#!/bin/sh

#Author: Nathalia Portilla & Andrea Rodriguez


#SBATCH --job-name muscleproJARC
#SBATCH --time 2-00:00:00
#SBATCH --mem 20GB
#SBATCH --cpus-per-task 20
#SBATCH --error iqtree.err
#SBATCH --output iqtree.out

#Set up working directories
cd ~/profagos/

#Create a File for output
mkdir resultsiqtree

#Load modules
module load iqtree/2.2.0_b

#Run Partition Fider 

iqtree2 -s ~/profagos/resultadosmuscle/alineamientoPHA.fasta -B 1000 -T AUTO


