
#!/bin/bash

output_script="generated_stamp_commands.sh"
rm "$output_script"

generate_pdfcpu_commands() {
  local dir="$1"
  shopt -s nullglob
  for src_file in "$dir"/*-non-indexed.pdf; do
    dest_file="${src_file/-non-indexed/}"
    #echo "pdfcpu stamp add -m text -- \"SIA/%p\" \"pos:br, scale:0.04, rot:0\" \"$src_file\" \"$dest_file\" && rm \"$src_file\"" >> "$output_script"
    echo "pdfcpu stamp add -m text -- \"SIA/%p\" \"pos:br, scale:0.04, rot:0\" \"$src_file\" \"$dest_file\"" >> "$output_script"
  done
  shopt -u nullglob
}

generate_pdfcpu_commands "./printable-3x3-tiled-landscape"
generate_pdfcpu_commands "./printable-2x3-tiled"
generate_pdfcpu_commands "./printable-2x2-tiled-landscape"

echo "✅ Generated $output_script"
