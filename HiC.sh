#!/bin/bash

cooler zoomify -p 2 --balance -r 10000,25000,50000,100000 /home/a.kononkova/DNAme_iPSC_PM/HiC/Neurons_GSE212252.drop_diag.5kb.cool -o ./mcool_file/Neuron.mcool
cooler zoomify -p 2 --balance -r 10000,25000,50000,100000 /home/a.kononkova/DNAme_iPSC_PM/HiC/NeuNpos.drop_diag.5kb.cool -o ./mcool_file/Neuron.mcool

cd ~
cd Project/m10000
cooltools expected-cis ../mcool_file/NeuNpo.mcool::/resolutions/10000 -o NeuNpo_comp.tsv --regions ../hg38.bed
cooltools expected-cis ../mcool_file/Neuron.mcool::/resolutions/10000 -o Neuron_comp.tsv --regions ../hg38.bed
cooltools eigs-cis ../mcool_file/NeuNpo.mcool::/resolutions/10000 -o comp/NeuNpo
cooltools eigs-cis ../mcool_file/Neuron.mcool::/resolutions/10000 -o comp/Neuron
cooltools saddle ../mcool_file/Neuron.mcool::/resolutions/10000 comp/Neuron.cis.vecs.tsv Neuron_comp.tsv -o Neuron_saddle --fig png --qrange 0.02 0.98 --regions ../hg38.bed
cooltools saddle ../mcool_file/NeuNpo.mcool::/resolutions/10000 comp/NeuNpo.cis.vecs.tsv NeuNpo_comp.tsv -o NeuNpo_saddle --fig png --qrange 0.02 0.98 --regions ../hg38.bed
chromosight detect --threads 2 --min-dist 10000 --max-dist 50000 ../mcool_file/NeuNpo.mcool::/resolutions/10000 NeuNpo_tad --pattern borders
chromosight detect --threads 2 --min-dist 10000 --max-dist 50000 ../mcool_file/Neuron.mcool::/resolutions/10000 Neuron_tad --pattern borders
chromosight detect --threads 2 --min-dist 10000 --max-dist 50000 ../mcool_file/Neuron.mcool::/resolutions/10000 Neuron_loop --pattern loops
chromosight detect --threads 2 --min-dist 10000 --max-dist 50000 ../mcool_file/NeuNpo.mcool::/resolutions/10000 NeuNpo_loop --pattern loops
awk 'BEGIN {FS="\t"; OFS="\t"} $1 != "chrY" && $5 != "" && $1 != "chrM" {print $1, $2, $3, $5}' comp/Neuron.cis.vecs.tsv > Neuron_comp.bed
awk 'BEGIN {FS="\t"; OFS="\t"} $1 != "chrY" && $5 != "" && $1 != "chrM" {print $1, $2, $3, $5}' comp/NeuNpo.cis.vecs.tsv > NeuNpo_comp.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3}' Neuron_tad.tsv > Neuron_tad.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3}' NeuNpo_tad.tsv > NeuNpo_tad.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3, $4, $5, $6}' Neuron_loop.tsv > Neuron_loop.bedpe
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3, $4, $5, $6}' NeuNpo_loop.tsv > NeuNpo_loop.bedpe

cd ~
cd Project/m25000
cooltools expected-cis ../mcool_file/NeuNpo.mcool::/resolutions/25000 -o NeuNpo_comp.tsv --regions ../hg38.bed
cooltools expected-cis ../mcool_file/Neuron.mcool::/resolutions/25000 -o Neuron_comp.tsv --regions ../hg38.bed
cooltools eigs-cis ../mcool_file/NeuNpo.mcool::/resolutions/25000 -o comp/NeuNpo
cooltools eigs-cis ../mcool_file/Neuron.mcool::/resolutions/25000 -o comp/Neuron
cooltools saddle ../mcool_file/Neuron.mcool::/resolutions/25000 comp/Neuron.cis.vecs.tsv Neuron_comp.tsv -o Neuron_saddle --fig png --qrange 0.02 0.98 --regions ../hg38.bed
cooltools saddle ../mcool_file/NeuNpo.mcool::/resolutions/25000 comp/NeuNpo.cis.vecs.tsv NeuNpo_comp.tsv -o NeuNpo_saddle --fig png --qrange 0.02 0.98 --regions ../hg38.bed
chromosight detect --threads 2 --min-dist 10000 --max-dist 50000 ../mcool_file/NeuNpo.mcool::/resolutions/25000 NeuNpo_tad --pattern borders
chromosight detect --threads 2 --min-dist 10000 --max-dist 50000 ../mcool_file/Neuron.mcool::/resolutions/25000 Neuron_tad --pattern borders
chromosight detect --threads 2 --min-dist 10000 --max-dist 50000 ../mcool_file/Neuron.mcool::/resolutions/25000 Neuron_loop --pattern loops
chromosight detect --threads 2 --min-dist 10000 --max-dist 50000 ../mcool_file/NeuNpo.mcool::/resolutions/25000 NeuNpo_loop --pattern loops
awk 'BEGIN {FS="\t"; OFS="\t"} $1 != "chrY" && $5 != "" && $1 != "chrM" {print $1, $2, $3, $5}' comp/Neuron.cis.vecs.tsv > Neuron_comp.bed
awk 'BEGIN {FS="\t"; OFS="\t"} $1 != "chrY" && $5 != "" && $1 != "chrM" {print $1, $2, $3, $5}' comp/NeuNpo.cis.vecs.tsv > NeuNpo_comp.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3}' Neuron_tad.tsv > Neuron_tad.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3}' NeuNpo_tad.tsv > NeuNpo_tad.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3, $4, $5, $6}' Neuron_loop.tsv > Neuron_loop.bedpe
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3, $4, $5, $6}' NeuNpo_loop.tsv > NeuNpo_loop.bedpe

cd ~
cd Project/m50000
cooltools expected-cis ../mcool_file/NeuNpo.mcool::/resolutions/50000 -o NeuNpo_comp.tsv --regions ../hg38.bed
cooltools expected-cis ../mcool_file/Neuron.mcool::/resolutions/50000 -o Neuron_comp.tsv --regions ../hg38.bed
cooltools eigs-cis ../mcool_file/NeuNpo.mcool::/resolutions/50000 -o comp/NeuNpo
cooltools eigs-cis ../mcool_file/Neuron.mcool::/resolutions/50000 -o comp/Neuron
cooltools saddle ../mcool_file/Neuron.mcool::/resolutions/50000 comp/Neuron.cis.vecs.tsv Neuron_comp.tsv -o Neuron_saddle --fig png --qrange 0.02 0.98 --regions ../hg38.bed
cooltools saddle ../mcool_file/NeuNpo.mcool::/resolutions/50000 comp/NeuNpo.cis.vecs.tsv NeuNpo_comp.tsv -o NeuNpo_saddle --fig png --qrange 0.02 0.98 --regions ../hg38.bed
chromosight detect --threads 2 --min-dist 10000 --max-dist 50000 ../mcool_file/NeuNpo.mcool::/resolutions/50000 NeuNpo_tad --pattern borders
chromosight detect --threads 2 --min-dist 10000 --max-dist 50000 ../mcool_file/Neuron.mcool::/resolutions/50000 Neuron_tad --pattern borders
chromosight detect --threads 2 --min-dist 10000 --max-dist 100000 ../mcool_file/Neuron.mcool::/resolutions/50000 Neuron_loop --pattern loops
chromosight detect --threads 2 --min-dist 10000 --max-dist 100000 ../mcool_file/NeuNpo.mcool::/resolutions/50000 NeuNpo_loop --pattern loops
awk 'BEGIN {FS="\t"; OFS="\t"} $1 != "chrY" && $5 != "" && $1 != "chrM" {print $1, $2, $3, $5}' comp/Neuron.cis.vecs.tsv > Neuron_comp.bed
awk 'BEGIN {FS="\t"; OFS="\t"} $1 != "chrY" && $5 != "" && $1 != "chrM" {print $1, $2, $3, $5}' comp/NeuNpo.cis.vecs.tsv > NeuNpo_comp.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3}' Neuron_tad.tsv > Neuron_tad.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3}' NeuNpo_tad.tsv > NeuNpo_tad.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3, $4, $5, $6}' Neuron_loop.tsv > Neuron_loop.bedpe
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3, $4, $5, $6}' NeuNpo_loop.tsv > NeuNpo_loop.bedpe

cd ~
cd Project/m100000
cooltools expected-cis ../mcool_file/NeuNpo.mcool::/resolutions/100000 -o NeuNpo_comp.tsv --regions ../hg38.bed
cooltools expected-cis ../mcool_file/Neuron.mcool::/resolutions/100000 -o Neuron_comp.tsv --regions ../hg38.bed
cooltools eigs-cis ../mcool_file/NeuNpo.mcool::/resolutions/100000 -o comp/NeuNpo
cooltools eigs-cis ../mcool_file/Neuron.mcool::/resolutions/100000 -o comp/Neuron
cooltools saddle ../mcool_file/Neuron.mcool::/resolutions/100000 comp/Neuron.cis.vecs.tsv Neuron_comp.tsv -o Neuron_saddle --fig png --qrange 0.02 0.98 --regions ../hg38.bed
cooltools saddle ../mcool_file/NeuNpo.mcool::/resolutions/100000 comp/NeuNpo.cis.vecs.tsv NeuNpo_comp.tsv -o NeuNpo_saddle --fig png --qrange 0.02 0.98 --regions ../hg38.bed
chromosight detect --threads 2 --min-dist 10000 --max-dist 150000 ../mcool_file/NeuNpo.mcool::/resolutions/100000 NeuNpo_tad --pattern borders
chromosight detect --threads 2 --min-dist 10000 --max-dist 150000 ../mcool_file/Neuron.mcool::/resolutions/100000 Neuron_tad --pattern borders
chromosight detect --threads 2 --min-dist 10000 --max-dist 300000 ../mcool_file/Neuron.mcool::/resolutions/100000 Neuron_loop --pattern loops
chromosight detect --threads 2 --min-dist 10000 --max-dist 300000 ../mcool_file/NeuNpo.mcool::/resolutions/100000 NeuNpo_loop --pattern loops
awk 'BEGIN {FS="\t"; OFS="\t"} $1 != "chrY" && $5 != "" && $1 != "chrM" {print $1, $2, $3, $5}' comp/Neuron.cis.vecs.tsv > Neuron_comp.bed
awk 'BEGIN {FS="\t"; OFS="\t"} $1 != "chrY" && $5 != "" && $1 != "chrM" {print $1, $2, $3, $5}' comp/NeuNpo.cis.vecs.tsv > NeuNpo_comp.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3}' Neuron_tad.tsv > Neuron_tad.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3}' NeuNpo_tad.tsv > NeuNpo_tad.bed
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3, $4, $5, $6}' Neuron_loop.tsv > Neuron_loop.bedpe
awk 'BEGIN {FS="\t"; OFS="\t"} {print $1, $2, $3, $4, $5, $6}' NeuNpo_loop.tsv > NeuNpo_loop.bedpe

cd ~
cooler show Project/mcool_file/NeuNpo.mcool::resolutions/50000 chr2:0-10000000 -o 'NeuNpo.png'
cooler show Project/mcool_file/Neuron.mcool::resolutions/50000 chr2:0-10000000 -o 'Neuron.png'