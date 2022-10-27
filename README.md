# Prophage_phylogenomics
#Hi! this is our phylogenomics class project. 

#Our first step is prepare the global fasta into multiple fasta using the comamand 

awk -F "|" '/^>/ {close(F) ; F = $1".fasta"} {print >> F}' Final_prophages.fasta

#The next step is convert every ADN fasta into proteins using transeq from EMBOSS/6.6.0
