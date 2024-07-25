
#vcf2plink
for i in genotype_filtered.recode.vcf wild.recode.vcf
do
/home/taliadoros/software/plink_linux_x86_64_20200616/plink --vcf ../${i} --id-delim _ --maf 0.01 --recode 12 --out ${i%.recode.vcf}_plink --chr-set -10 --allow-extra-chr
done

#Admixture
prefix=Dom_plink
for r in $(seq 1 10)
do
for K in $(seq 2 10)
do /home/taliadoros/software/admixture_linux-1.3.0/admixture -s time --cv Dom_plink.ped $K
echo procesed ${prefix}.K${K}r${r}.Q
mv ${prefix}.${K}.Q ${prefix}.K${K}r${r}.Q
mv ${prefix}.K${K}r${r}.Q out/
done
done

#vizualization
pong -m pong_filemap -i ind2pop.txt -n pop_order.txt
