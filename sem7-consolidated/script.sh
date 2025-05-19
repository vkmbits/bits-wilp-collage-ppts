for folder in */; do libreoffice --headless --convert-to pdf "$folder"*.ppt* --outdir "$folder"; done

for folder in */; do mv "$folder"*.pdf "$folder"/pdfs/; done


for folder in */; do echo ; pdfunite "$folder"/pdfs/*.pdf "$folder"/consolidated.pdf ; done


#for folder in */; do echo "$folder"pdfs/*.pdf; pdfunite "$folder"pdfs/*.pdf "$folder"consolidated.pdf; done
for folder in */; do echo "$folder"pdfs/*.pdf; pdfunite "$folder"pdfs/*.pdf "$folder""$(basename "$folder")"-consolidated.pdf; done


mkdir ../printable/
mkdir ../printable/printable-consolidated-3x3-tiled/
mkdir ../printable/printable-consolidated-2x3-tiled/
mkdir ../printable/printable-consolidated-2x2-tiled/
mkdir ../printable/consolidated-pdfs/

for folder in */; 
do 
    echo ../printable/printable-consolidated-3x3-tiled/bits-wilp-sem7-"$(basename "$folder")"-consolidated-3x3-landscape-non-indexed.pdf "$folder""$(basename "$folder")"-consolidated.pdf
    pdfjam --landscape --nup 3x3 --paper a4paper --outfile ../printable/printable-consolidated-3x3-tiled/bits-wilp-sem7-"$(basename "$folder")"-consolidated-3x3-landscape-non-indexed.pdf "$folder""$(basename "$folder")"-consolidated.pdf
    echo ../printable/printable-consolidated-2x3-tiled/bits-wilp-sem7-"$(basename "$folder")"-consolidated-2x3-non-indexed.pdf  "$folder""$(basename "$folder")"-consolidated.pdf
    pdfjam --nup 2x3 --paper a4paper --outfile ../printable/printable-consolidated-2x3-tiled/bits-wilp-sem7-"$(basename "$folder")"-consolidated-2x3-non-indexed.pdf  "$folder""$(basename "$folder")"-consolidated.pdf
    echo ../printable/printable-consolidated-2x2-tiled/bits-wilp-sem7-"$(basename "$folder")"-consolidated-2x2-landscape-non-indexed.pdf  "$folder""$(basename "$folder")"-consolidated.pdf
    pdfjam --landscape --nup 2x2 --paper a4paper --outfile ../printable/printable-consolidated-2x2-tiled/bits-wilp-sem7-"$(basename "$folder")"-consolidated-2x2-landscape-non-indexed.pdf  "$folder""$(basename "$folder")"-consolidated.pdf
    cp "$folder""$(basename "$folder")"-consolidated.pdf ../printable/consolidated-pdfs/bits-wilp-sem7-"$(basename "$folder")"-consolidated.pdf 
done


for file in ../printable/*/*-non-indexed.pdf; 
do 
    filename="$(basename "$file")"
    shortform=$(echo "$(basename "$file")" | sed 's/bits-wilp-sem7-\(.*\)-consolidated.*/\1/' | tr '-' '\n' | cut -c1 | tr -d '\n')
    resultendfile="$(echo "$file"| sed "s/-non-indexed//")"

    echo "$shortform" - "$file"
    echo "$resultendfile"

    pdfcpu stamp add -m text -- "$shortform/%p" "pos:br, scale:0.04, rot:0" "$file" "$resultendfile"
    rm "$file"
done

pdfunite ../printable/printable-consolidated-3x3-tiled/*.pdf  ../printable/printable-consolidated-3x3-tiled/bits-wilp-sem7-ppts-consolidated-3x3-landscape.pdf
pdfunite ../printable/printable-consolidated-2x3-tiled/*.pdf  ../printable/printable-consolidated-2x3-tiled/bits-wilp-sem7-ppts-consolidated-2x3.pdf
pdfunite ../printable/printable-consolidated-2x2-tiled/*.pdf  ../printable/printable-consolidated-2x2-tiled/bits-wilp-sem7-ppts-consolidated-2x2-landscape.pdf 
pdfunite ../printable/consolidated-pdfs/*pdf                  ../printable/consolidated-pdfs/bits-wilp-sem7-ppts-consolidated.pdf 
