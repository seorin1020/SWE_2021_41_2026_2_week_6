for file in files/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        first_letter=$(echo "${filename:0:1}" | tr 'A-Z' 'a-z')
        mv "$file" "$first_letter/"
    fi
done