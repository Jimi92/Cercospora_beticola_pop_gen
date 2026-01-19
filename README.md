# Population and evolutionary genomics of Cercospora beticola

# Data preparation

## SNP calling and filtering

Location on GitHub: folder SNP_calling

The script full_pipe_SNP_calling.sh was used to 1) trim raw sequence files, 2) map the sequences on the reference genome, and 3) call and hardfilter high-quality SNPs and indels.
The script fetch_independ_neutral.sh was used to create the independent and neutral datasets as discribed here:


----------------------------------------------------------------------------------------------------------------------------------------

# Data analyses

## PCA and Admixture
Location on GitHub: folder 'Clustering_analyses'

Use the R script PCA.R to reproduce PCA plots.
The script admixture_Dom.sh was used to convert the vcf file into a plink format and run the admixture analysis.
The script make_qmap_pong.sh was used to visualise admixture results with pong.


## Nucleotide diversity and Tajima's D
Location on GitHub: folder 'Summary_statistics_and_divergence'

Use the script Pi_Td_Fst_Dxy.sh to obtain estimates for Nucleotide diversity and Tajima's D. The tsd.Rmd script visualizes the results and runs the Kruskal-Wallis and Wilcoxon tests.


## Population divergence
Location on GitHub: folder 'Summary_statistics_and_divergence'

Use the script Pi_Td_Fst_Dxy.sh to obtain Fst and Dxy estimates.

## Polymorphism-aware tree
Location on GitHub: folder PoMo

the script FastaVCFToCounts.py was used to convert the VCF file to a cf file. Then the run_PoMo.sh was used to run the analysis

## AMOVA
Location on GitHub: folder Amova

the script AMOVA.Rmd was used to perform two AMOVA analyses with different levels of strata.

## Circos
Location on GitHub: folder Circos

All files needed to re-create circos figure can be found in the folder Circos. install circos from their webpage: https://circos.ca, and simply do ./circos to recreate the figure.  
