#!/bin/bash

# 현재 디렉토리를 저장합니다.
CURRENT_DIR=$(pwd)

# S3에서 압축된 파일을 다운로드합니다.
aws s3 cp s3://bucket/path/to/bin.tar.gz /path/to/download/bin.tar.gz

# 압축을 해제하고 심볼릭 링크를 복원합니다.
tar xzf /path/to/download/bin.tar.gz -C /path/to/your/project

# 현재 디렉토리를 복원합니다.
cd "$CURRENT_DIR"
