# pdfjam --nup 2x5 --paper a4paper --outfile 2x5/infosec2x5.pdf infosec.pdf
# pdfjam --nup 2x5 --paper a4paper --outfile 2x5/cn2x5.pdf CN-saiteja.pdf              
# pdfjam --nup 2x5 --paper a4paper --outfile 2x5/se2x5.pdf SE\ merged\ version.pdf
# pdfjam --nup 2x5 --paper a4paper --outfile 2x5/hci2x5.pdf ./hci.pdf
# pdfjam --landscape --nup 3x3 --paper a4paper --outfile 3x3/hci3x3.pdf ./hci.pdf
# pdfjam --landscape --nup 2x2 --paper a4paper --outfile 2x2/hci2x2.pdf ./hci.pdf

# pdfjam --nup 2x5 --paper a4paper --outfile 2x5/se2x5.pdf ./se.pdf
# pdfjam --landscape --nup 3x3 --paper a4paper --outfile 3x3/se3x3.pdf ./se.pdf
# pdfjam --landscape --nup 2x2 --paper a4paper --outfile 2x2/se2x2.pdf ./se.pdf

#--- numbering

# Loop through every PDF in current directory and subdirectories

find . -type f -name "*.pdf" | while read -r file; do
    dir=$(dirname "$file")
    base=$(basename "$file" .pdf)

    # Backup original
    backup="$dir/${base}-nonnumbered.pdf"
    mv "$file" "$backup"

    echo "Stamping $backup -> $file"
    pdfcpu stamp add -m text -- "%p" "pos:br, scale:0.02, rot:0" "$backup" "$file"
done
