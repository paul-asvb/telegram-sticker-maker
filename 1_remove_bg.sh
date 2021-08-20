source .env

echo "remove backgrounds for all images and save them in ./tmp"

if ! command -v curl &>/dev/null; then
    echo "curl could not be found"
    exit
fi

if [ -z "$REMOVE_API_KEY" ]
then
      echo "\$REMOVE_API_KEY is empty. go to https://www.remove.bg/ to get one for free."
fi

mkdir -p ./tmp
for filepath in ./input/*; do
    filename=$(basename $filepath)
    echo $filename
    curl -H "X-API-Key: $REMOVE_API_KEY" \
        -F "image_file=@$filepath" \
        -f https://api.remove.bg/v1.0/removebg -o "./tmp/$filename.png"
done
