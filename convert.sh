source .env
echo $REMOVE_API_KEY
for filename in ./input/*; do
    echo "image_file=$filename";
    curl -H "X-API-Key: $REMOVE_API_KEY"\
       -F "image_file=@$filename"\
       -f https://api.remove.bg/v1.0/removebg -o "$filename.png"
done