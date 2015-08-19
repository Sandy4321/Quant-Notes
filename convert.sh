find . -type f -name '*.md' -print0 | while IFS= read -r -d '' file; do
	echo "converting ${file}...";
    pandoc "${file}" -o "${file}.pdf";
done