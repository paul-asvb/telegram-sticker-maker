# convert any dir of images to telegram sticker
1. remove backgroun
2. change the longer side of image to 512 with respect of aspect ratio

## prerequsities
1. curl
2. imagemagick
3. API token from remove.bg in .env

tested on macOS & linux

## Howto
1. put all images in directory ./input
2. run
```
bash convert.sh
```
3. all images are in ./output
