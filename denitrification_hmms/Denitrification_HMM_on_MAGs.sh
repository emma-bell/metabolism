#!/bin/zsh
# HMMER must be installed

inputfolder="input/folder/of/faa_files/"
outputfolder="hmm_results"

hmm="Denitrification.hmm"

mkdir -p ${outputfolder}

for file in ${inputfolder}/*.faa

do

    	name=$(basename $file .faa)
    	echo ${name}

    	hmmsearch --cut_tc --tblout ${outputfolder}/${name}.tbl.txt -o ${outputfolder}/${name}.out.txt ${hmm} ${file}
	score=`grep -v '^#' ${outputfolder}/${name}.tbl.txt | awk '{print $1,$3,$6}' OFS='\t' | sed "s/^/${name}\t/"`

	echo ${score} >> ${outputfolder}'.score.tmp'

done

	echo -e "Genome\tGene\tHmm\tScore" > headers.tmp
	grep . ${outputfolder}.score.tmp > ${outputfolder}.hits.tmp
	cat headers.tmp ${outputfolder}.hits.tmp > ${outputfolder}.hits.tsv
	rm *.tmp