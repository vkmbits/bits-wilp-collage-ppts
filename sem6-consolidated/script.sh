# nameing rules

# bits-wilp-sem6-<sub>-ppts-consolidated.pdf
# bits-wilp-sem6-<sub>-ppts-consolidated-NxX(-landscape)(-non-indexed).pdf
# -ppts-consolidated-3x3-landscape-non-indexed.pdf
# -ppts-consolidated.pdf



# Tiling
## 3x3 tiling
mkdir ./printable-3x3-tiled-landscape/

pdfjam --trim '5mm 15mm 5mm 15mm' --clip true --landscape --nup 3x3 --paper a4paper --outfile ./printable-3x3-tiled-landscape/bits-wilp-sem6-software-design-principals-ppts-consolidated-3x3-landscape-non-indexed.pdf ./bits-wilp-sem6-software-design-principals-ppts-consolidated.pdf
pdfjam --landscape --nup 3x3 --paper a4paper --outfile ./printable-3x3-tiled-landscape/bits-wilp-sem6-computing-and-design-ppts-consolidated-3x3-landscape-non-indexed.pdf ./bits-wilp-sem6-computing-and-design-ppts-consolidated.pdf
pdfjam --landscape --nup 3x3 --paper a4paper --outfile ./printable-3x3-tiled-landscape/bits-wilp-sem6-database-design-ppts-consolidated-3x3-landscape-non-indexed.pdf ./bits-wilp-sem6-database-design-ppts-consolidate.pdf
pdfjam --landscape --nup 3x3 --paper a4paper --outfile ./printable-3x3-tiled-landscape/bits-wilp-sem6-statistical-inference-and-applications-ppts-consolidated-3x3-landscape-non-indexed.pdf ./bits-wilp-sem6-statistical-inference-and-applications-ppts-consolidated.pdf

## 3x2 tiling
mkdir ./printable-2x3-tiled/

pdfjam --nup 2x3 --paper a4paper --outfile ./printable-2x3-tiled/bits-wilp-sem6-statistical-inference-and-applications-ppts-consolidated-2x3-non-indexed.pdf ./bits-wilp-sem6-statistical-inference-and-applications-ppts-consolidated.pdf
pdfjam --nup 2x3 --paper a4paper --outfile ./printable-2x3-tiled/bits-wilp-sem6-computing-and-design-ppts-consolidated-2x3-non-indexed.pdf ./bits-wilp-sem6-computing-and-design-ppts-consolidated.pdf
pdfjam --nup 2x3 --paper a4paper --outfile ./printable-2x3-tiled/bits-wilp-sem6-database-design-ppts-consolidated-2x3-non-indexed.pdf ./bits-wilp-sem6-database-design-ppts-consolidate.pdf
pdfjam --trim '5mm 15mm 5mm 15mm' --clip true --nup 2x4 --paper a4paper --outfile ./printable-2x3-tiled/bits-wilp-sem6-software-design-principals-ppts-consolidated-2x4-non-indexed.pdf ./bits-wilp-sem6-software-design-principals-ppts-consolidated.pdf

## 2x2 tiling
mkdir ./printable-2x2-tiled-landscape/

pdfjam --landscape --nup 2x2 --paper a4paper --outfile ./printable-2x2-tiled-landscape/bits-wilp-sem6-statistical-inference-and-applications-ppts-consolidated-2x2-landscape-non-indexed.pdf ./bits-wilp-sem6-statistical-inference-and-applications-ppts-consolidated.pdf 
pdfjam --landscape --nup 2x2 --paper a4paper --outfile ./printable-2x2-tiled-landscape/bits-wilp-sem6-computing-and-design-ppts-consolidated-2x2-landscape-non-indexed.pdf ./bits-wilp-sem6-computing-and-design-ppts-consolidated.pdf
pdfjam --landscape --nup 2x2 --paper a4paper --outfile ./printable-2x2-tiled-landscape/bits-wilp-sem6-database-design-ppts-consolidated-2x2-landscape-non-indexed.pdf ./bits-wilp-sem6-database-design-ppts-consolidate.pdf
pdfjam --trim '5mm 15mm 5mm 15mm' --clip true --landscape --nup 2x2 --paper a4paper --outfile ./printable-2x2-tiled-landscape/bits-wilp-sem6-software-design-principals-ppts-consolidated-2x2-landscape-non-indexed.pdf ./bits-wilp-sem6-software-design-principals-ppts-consolidated.pdf


##
### all consolidated versions
##pdfunite ./printable-3x3-tiled-landscape/*.pdf ./printable-3x3-tiled-landscape/bits-wilp-sem6-ppts-consolidated-3x3-landscape.pdf
##pdfunite ./printable-2x3-tiled/*.pdf ./printable-2x3-tiled/bits-wilp-sem6-ppts-consolidated-2x3.pdf
##pdfunite ./printable-2x2-tiled-landscape/*.pdf ./printable-2x2-tiled-landscape/bits-wilp-sem6-ppts-consolidated-2x2-landscape.pdf
##


##indexing
### 3x3 indexing
#pdfcpu stamp add -m text -- "SIA/%p" "pos:br, scale:0.04, rot:0" ./printable-3x3-tiled-landscape/statistical-inference-and-applications-consolidated-3x3-landscape-non-indexed.pdf ./printable-3x3-tiled-landscape/statistical-inference-and-applications-consolidated-3x3-landscape.pdf
#pdfcpu stamp add -m text -- "CD/%p" "pos:br, scale:0.04, rot:0" ./printable-3x3-tiled-landscape/computing-and-design-ppts-consolidated-3x3-landscape-non-indexed.pdf ./printable-3x3-tiled-landscape/computing-and-design-ppts-consolidated-3x3-landscape.pdf
#pdfcpu stamp add -m text -- "DD/%p" "pos:br, scale:0.04, rot:0" ./printable-3x3-tiled-landscape/database-design-ppts-consolidate-3x3-landscape-non-indexed.pdf ./printable-3x3-tiled-landscape/database-design-ppts-consolidate-3x3-landscape.pdf
#pdfcpu stamp add -m text -- "SDP/%p" "pos:br, scale:0.04, rot:0" ./printable-3x3-tiled-landscape/software-design-principals-consolidated-3x3-landscape-non-indexed.pdf ./printable-3x3-tiled-landscape/software-design-principals-consolidated-3x3-landscape.pdf
#
#
### 2x3 indexing
#pdfcpu stamp add -m text -- "SIA/%p" "pos:br, scale:0.04, rot:0" ./printable-2x3-tiled/statistical-inference-and-applications-ppts-consolidated-2x3-non-indexed.pdf ./printable-2x3-tiled/statistical-inference-and-applications-ppts-consolidated-2x3.pdf
#pdfcpu stamp add -m text -- "CD/%p" "pos:br, scale:0.04, rot:0" ./printable-2x3-tiled/computing-and-design-ppts-consolidated-2x3-non-indexed.pdf ./printable-2x3-tiled/computing-and-design-ppts-consolidated-2x3.pdf
#pdfcpu stamp add -m text -- "DD/%p" "pos:br, scale:0.04, rot:0" ./printable-2x3-tiled/database-design-ppts-consolidate-2x3-non-indexed.pdf ./printable-2x3-tiled/database-design-ppts-consolidate-2x3.pdf
#pdfcpu stamp add -m text -- "SDP/%p" "pos:br, scale:0.04, rot:0" ./printable-2x3-tiled/software-design-principals-consolidated-2x4-non-indexed.pdf ./printable-2x3-tiled/software-design-principals-consolidated-2x3.pdf
#
#
### 2x2 indexing
#pdfcpu stamp add -m text -- "SIA/%p" "pos:br, scale:0.04, rot:0" ./printable-2x2-tiled-landscape/statistical-inference-and-applications-ppts-consolidated-2x2-landscape-non-indexed.pdf ./printable-2x2-tiled-landscape/statistical-inference-and-applications-ppts-consolidated-2x2-landscape.pdf
#pdfcpu stamp add -m text -- "CD/%p" "pos:br, scale:0.04, rot:0" ./printable-2x2-tiled-landscape/computing-and-design-ppts-consolidated-2x2-landscape-non-indexed.pdf ./printable-2x2-tiled-landscape/computing-and-design-ppts-consolidated-2x2-landscape.pdf
#pdfcpu stamp add -m text -- "DD/%p" "pos:br, scale:0.04, rot:0" ./printable-2x2-tiled-landscape/database-design-ppts-consolidate-2x2-landscape-non-indexed.pdf ./printable-2x2-tiled-landscape/database-design-ppts-consolidate-2x2-landscape.pdf
#pdfcpu stamp add -m text -- "SDP/%p" "pos:br, scale:0.04, rot:0" ./printable-2x2-tiled-landscape/software-design-principals-ppts-consolidated-2x2-landscape-non-indexed.pdf ./printable-2x2-tiled-landscape/software-design-principals-consolidated-2x2-landscape.pdf

##removing non-indexed files
#rm ./printable-3x3-tiled-landscape/*-non-indexed.pdf
#rm ./printable-2x3-tiled/*-non-indexed.pdf
#rm ./printable-2x2-tiled-landscape/*-non-indexed.pdf


