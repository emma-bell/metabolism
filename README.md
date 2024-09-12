# Metabolism
This repository contains hidden Markov models (HMMs) for annotating protein-coding genes in microbial metagenomes and metagenome-assembled genomes.

## HMM sets
* [sulfur disproportionation](https://github.com/emma-bell/metabolism/tree/main/sulfur_hmms): _yedE-like, tusA, dsrE-like, chp1, chp2_
* [denitrification](denitrification_hmms): _narG, narH, napA, nirK, nirS, cnor, qnor, bnor, snor, nosB, nosZI, nosZII_

## Sulfur disproportionation
[sulfur_hmms](https://github.com/emma-bell/metabolism/tree/main/sulfur_hmms) contains HMMs for annotation of genes in the YTD gene cluster putatively involved in sulfur disproportionation.

For info on the YTD gene cluster: [Umezawa et al. Disproportionation of inorganic sulfur compounds by a novel autotrophic bacterium belonging to _Nitrospirota_. Syst. Appl. Microbiol. (2020).](https://www.sciencedirect.com/science/article/pii/S0723202020300655)

For info on the HMMs: [Bell et al. Active anaerobic methane oxidation and sulfur disproportionation in the deep terrestrial subsurface. ISME J (2022).](https://www.nature.com/articles/s41396-022-01207-w)

## Denitrification
[denitrification_hmms](denitrification_hmms) contains HMMs for annotation of denitrification genes in members of the phylum _Bacillota_.

Denitrification HMMs can be used [individually](denitrification_hmms/3_HMMs_individual) or as a [denitrification gene set](denitrification_hmms/4_HMMs_concatenated). An example [script](denitrification_hmms/Denitrification_HMM_on_MAGs.sh) to run the HMM gene set on a directory of genome amino acid files (.faa) with [HMMER](http://hmmer.org) is included.

Publication at: [Bell et al. Denitrification genotypes of endospore-forming _Bacillota_. ISME Communications (2024).](https://doi.org/10.1093/ismeco/ycae107)