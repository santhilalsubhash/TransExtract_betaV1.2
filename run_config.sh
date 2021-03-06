#!/bin/bash
#Author: Santhilal Subhash
#Contact: santhilal.subhash@gu.se
#script v1.2
#Scripts overflow
#accessTransition.pl --> Transitions_extraction.pl --> run_transition.pl
outpath=$1
inpath=$2
samples=("SAMPLE-1" "SAMPLE-2") ## Input your sample names: VCF file should be named as SAMPLE-1_variations.vcf, SAMPLE-2_variations.vcf...
BaseQual=$3
readDepth=$4
AltReadDepth=$5

strand=("FR" "RR") 
for i in "${samples[@]}"
do
	for j in "${strand[@]}"
	do
		mkdir -p $outpath/$i/$j
	done
done


for i in "${samples[@]}"
do
VCF="$inpath/${i}_variations_out.txt"

for j in "${strand[@]}"
do

perl Transitions_extraction.pl $BaseQual $i $readDepth $j $VCF $outpath $AltReadDepth
done
done
mkdir -p $outpath/plots
Rscript $outpath/plot.R
echo 'script v1.2'
echo 'Author: Santhilal Subhash'
echo 'Contact: santhilal.subhash@gu.se'
