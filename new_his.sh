#!/bin/bash

cooltools insulation -o Neuron_insul25_100 --view Project/hg38.bed Project/mcool_file/Neuron.mcool::/resolutions/25000 100000 
cooltools insulation -o Neuron_insul25_150 --view Project/hg38.bed Project/mcool_file/Neuron.mcool::/resolutions/25000 150000
cooltools insulation -o Neuron_insul25_200 --view Project/hg38.bed Project/mcool_file/Neuron.mcool::/resolutions/25000 200000
cooltools insulation -o Neuron_insul10_100 --view Project/hg38.bed Project/mcool_file/Neuron.mcool::/resolutions/10000 100000
cooltools insulation -o Neuron_insul10_150 --view Project/hg38.bed Project/mcool_file/Neuron.mcool::/resolutions/10000 150000
cooltools insulation -o Neuron_insul10_200 --view Project/hg38.bed Project/mcool_file/Neuron.mcool::/resolutions/10000 200000
cooltools insulation -o NeuNpo_insul25_100 --view Project/hg38.bed Project/mcool_file/NeuNpo.mcool::/resolutions/25000 100000 
cooltools insulation -o NeuNpo_insul25_150 --view Project/hg38.bed Project/mcool_file/NeuNpo.mcool::/resolutions/25000 150000
cooltools insulation -o NeuNpo_insul25_200 --view Project/hg38.bed Project/mcool_file/NeuNpo.mcool::/resolutions/25000 200000
cooltools insulation -o NeuNpo_insul10_100 --view Project/hg38.bed Project/mcool_file/NeuNpo.mcool::/resolutions/10000 100000
cooltools insulation -o NeuNpo_insul10_150 --view Project/hg38.bed Project/mcool_file/NeuNpo.mcool::/resolutions/10000 150000
cooltools insulation -o NeuNpo_insul10_200 --view Project/hg38.bed Project/mcool_file/NeuNpo.mcool::/resolutions/10000 200000

awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./Neuron_insul10_100 > Neuron_insul10_100b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' Neuron_insul10_100b.tsv > Neuron_insul10_100_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./Neuron_insul10_150 > Neuron_insul10_150b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' Neuron_insul10_150b.tsv > Neuron_insul10_150_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./Neuron_insul10_200 > Neuron_insul10_200b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' Neuron_insul10_200b.tsv > Neuron_insul10_200_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./Neuron_insul25_100 > Neuron_insul25_100b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' Neuron_insul25_100b.tsv > Neuron_insul25_100_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./Neuron_insul25_150 > Neuron_insul25_150b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' Neuron_insul25_150b.tsv > Neuron_insul25_150_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./Neuron_insul25_200 > Neuron_insul25_200b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' Neuron_insul25_200b.tsv > Neuron_insul25_200_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./NeuNpo_insul10_100 > NeuNpo_insul10_100b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' NeuNpo_insul10_100b.tsv > NeuNpo_insul10_100_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./NeuNpo_insul10_150 > NeuNpo_insul10_150b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' NeuNpo_insul10_150b.tsv > NeuNpo_insul10_150_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./NeuNpo_insul10_200 > NeuNpo_insul10_200b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' NeuNpo_insul10_200b.tsv > NeuNpo_insul10_200_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./NeuNpo_insul25_100 > NeuNpo_insul25_100b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' NeuNpo_insul25_100b.tsv > NeuNpo_insul25_100_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./NeuNpo_insul25_150 > NeuNpo_insul25_150b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' NeuNpo_insul25_150b.tsv > NeuNpo_insul25_150_tads.bed
awk '$9 == "True" {print $1, $2, $3, "TAD_" NR}' OFS="\t" ./NeuNpo_insul25_200 > NeuNpo_insul25_200b.tsv ; awk 'BEGIN{OFS="\t"} {if(NR>1) print prev[1], prev[2], $2, "TAD_" NR; prev[1]=$1; prev[2]=$3} END{print prev[1], prev[2], $3, "TAD_" NR}' NeuNpo_insul25_200b.tsv > NeuNpo_insul25_200_tads.bed