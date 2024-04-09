#!/bin/bash

# 압축 스크립트
# 현재 디렉토리를 저장합니다.
# CURRENT_DIR=$(pwd)

# node_modules/.bin 폴더의 심볼릭 링크를 실제 파일로 대체하여 압축합니다.
tar czf bin.tar.gz --dereference node_modules/.bin

# 압축된 파일을 S3에 업로드합니다.
aws s3 cp bin.tar.gz s3://github-action-org/next-js-action/bin.tar.gz
