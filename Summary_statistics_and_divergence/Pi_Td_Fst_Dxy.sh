# Pi, Fit, Day
pixy --stats pi fst dxy \
--vcf cerco_allsites.vcf.gz \
--populations cerco_sampleIDs_popfile.txt \
--window_size 10000 \
--n_cores 4 \
--output_folder output \
--output_prefix pixy_output

# Tajima's D
while read p
do
vcftools --gzvcf cerco_allsites.vcf.gz --keep ${p} --TajimaD 10000 --out ${p}_neutrality_test
done