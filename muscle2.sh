#!/bin/sh

#Author: Nathalia Portilla & Andrea Rodriguez 


#SBATCH --job-name muscleproJARC
#SBATCH --time 2-00:00:00
#SBATCH --mem 20GB
#SBATCH --cpus-per-task 20
#SBATCH --error musclepro.err
#SBATCH --output muscleprotv.out

#Set up working directories
cd ~/profagos/

#Load modules

module load muscle/5.1

#Create a dir for results
mkdir resultadosmuscle

#Run Alignment 

muscle -in ~/profagos/sec_fastas/gms_virusconcatenadoPHA.fasta  -out ~/profagos/resultadosmuscle/alineamientoPHA.fasta -maxiters 1 -diags -sv -distance1 kbit20_3
