mkdir -p output

for filepath in ./tmp/*; do
    filename=$(basename $filepath)
    echo $filename
    convert $filepath -resize 512x512 ./output/$filename
done
