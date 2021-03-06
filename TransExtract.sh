#!/bin/bash
#Author: Santhilal Subhash
#Contact: santhilal.subhash@gu.se
#script v1.2
#Scripts overflow
#accessTransition.pl --> Transitions_extraction.pl --> run_transition.pl

outpath='INPUT/PATH' ## The folder where the output should be stored. Include directory path by replacing 'INPUT/PATH' with yours.
inpath='OUTPUT/PATH' ## The folder which contains all input VCF files Include directory path by replacing 'OUTPUT/PATH' with yours.
### PLEASE EDIT run_config.sh to include your list of sample names ##


BaseQual=0 ## Your baseQuality cutoff
readDepth=2 ## Your total ReadDepth cutoff
AltReadDepth=2 ## Your alternate ReadDepth cutoff

./run_config.sh $outpath $inpath $BaseQual $readDepth $AltReadDepth
