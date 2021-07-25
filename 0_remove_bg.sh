source .env

if ! command -v curl &>/dev/null; then
    echo "curl could not be found"
    exit
fi

mkdir -p ./tmp

for filepath in ./input/*; do
    filename=$(basename $filepath)
    echo $filename
    curl -H "X-API-Key: $REMOVE_API_KEY" \
        -F "image_file=@$filepath" \
        -f https://api.remove.bg/v1.0/removebg -o "./tmp/$filename.png"
done
