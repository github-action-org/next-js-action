#!/bin/bash

folder="/data/app/lugstay-api"

if [ ! -d "$folder" ]; then
    mkdir -p "$folder"
    echo "폴더 '$folder'를 생성했습니다."
else
    echo "폴더 '$folder'가 이미 존재합니다. 패스합니다."
fi