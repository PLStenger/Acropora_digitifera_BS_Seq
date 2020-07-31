#! /bin/bash 

cd  /home/stenger/stenger_data/EPIGENETIC_DATA/99_wget_KEGG

rm 01_run_me_first_KO.sh

echo "#! /bin/bash" > 01_run_me_first_KO.sh

cat gene_and_KO_list.txt | while read line 
do 
awk '{print "wget -q -O - https://www.genome.jp/dbget-bin/www_bget?"""$2""".txt > "$1"_KEGG_file.txt"}' | sed $'s/.txt >/ >/g' >> 01_run_me_first_KO.sh
done

bash 01_run_me_first_KO.sh

rm GO.txt

for FILE in $(ls gene*_KEGG_file.txt)
do
echo "${FILE##*/}" >> GO.txt
grep -o "term/.*\">" ${FILE##*/} >> GO.txt
done

perl -0pe 's/\nterm/ term/g' GO.txt > GO_02.txt 
head GO_02.txt

sed 's/_KEGG_file.txt//g' GO_02.txt > GO_03.txt 
head GO_03.txt

sed 's/term\///g' GO_03.txt > GO_04.txt 
head GO_04.txt

sed 's/">//g' GO_04.txt > GO_05.txt 
head GO_05.txt

sed $'s/ /\t/g' GO_05.txt > GO_06.txt 
head GO_06.txt
