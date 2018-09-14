#!/bin/bash
#==================================#
# Name: file_to_webp.sh
# Ahthor: Stephen Tseng
# Last Update Date: 2018-09-13
# Script for: Convert png or jpg to webp, gif to webm, and mp4 to webm.
#             And put them into classified dir
# Prerequests: FFmpeg(install with apt), Classifier(install with pip)
# For blog users:
# Put your images(.jpg,.png), .gif, and .mp4 all under dir:media/files
# Then run commands `./file_to_webp.sh`
# 
# 中文表述一下：
# 每次呢，博客中添加一张新的图片（jpg 格式，png 格式都行），或者新的 GIF 啊
# 都把它放在 media/files/NEW 这个文件夹里，然后呢
# 在博客写完，要提交到远程仓库或者服务器之前
# 只要进入 media/files/BATCH 文件夹里，用 wsl 跑一遍 file_to_webp.sh
# 就可以自动整理你放进来的所有类型的文件啦，所有文件会归类到命名好的文件夹里
# 这个脚本的依赖主要有两个：FFmpeg（用来转换 gif 为 webm 格式）和 classifier（用来整理文件）
# 因此，如果你的 Linux 环境里面没有这两个包，需要先安装，附安装方法：
# FFmpeg: `sudo apt install FFmpeg` （没错就是包管理器2333，Ubuntu大法好）
# classifier: `pip install classifier` （python环境需要你自己检查一下，python3是可以的）

# for me, I am using miniconda as a python environment admin
# so I have to change to the environment first
source activate Y

# Change to dir ../
cd ..

# Set convert dir and output dir
SOURCE_DIR=./NEW/
OUTPUT_DIR=./

# If image size > 1KB, convert to webp.
SIZE=1024

# Set convert quality 50.
QUALITY=50

# Convert image to webp:
FILE_LIST=`find $SOURCE_DIR | egrep "^*\.(png|jpg|JPG|jpeg)$"`
for file_name in $FILE_LIST
do
    file_size=`ls -l $file_name | awk '{ print $5 }'`
    if [ $file_size -gt $SIZE ]; then
        new_file_name=${file_name%.*}
        cwebp -q $QUALITY $file_name -o $new_file_name.webp
    fi
done

# Convert animated gif to webm:
# Remember we should have ffmpeg downloadd first:
# sudo apt install ffmpeg
find "$SOURCE_DIR" -name '*.gif' -exec sh -c 'ffmpeg -i "$0" "${0%%.gif}.webm"' {} \;

# Convert videos to webm:
# find "$SOURCE_DIR" -name '*.mp4' -exec sh -c 'ffmpeg -i "$0" -c:v libvpx -crf 10 -b:v 1M -c:a libvorbis "${0%%.mp4}.webm"' {} \;

# Classify the files with different type in the same folder:
# we can use `classifier` to do this
# But first, you have to run `pip install classifier` before you can use it directly
classifier -st jpg -sf "JPG" -d "$SOURCE_DIR" -o "$OUTPUT_DIR"
classifier -st png -sf "PNG" -d "$SOURCE_DIR" -o "$OUTPUT_DIR"
classifier -st gif -sf "GIF" -d "$SOURCE_DIR" -o "$OUTPUT_DIR"
classifier -st mp4 -sf "MP4" -d "$SOURCE_DIR" -o "$OUTPUT_DIR"
classifier -st webp -sf "WEBP" -d "$SOURCE_DIR" -o "$OUTPUT_DIR"
classifier -st webm -sf "WEBM" -d "$SOURCE_DIR" -o "$OUTPUT_DIR"
