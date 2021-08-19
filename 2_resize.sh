mkdir -p output

echo "resize all images in ./tmp and save them in ./output"

for filepath in ./tmp/*; do
    filename=$(basename $filepath)
    echo $filename
    convert $filepath -resize 512x512 ./output/$filename
done
