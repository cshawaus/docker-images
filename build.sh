#!/bin/bash

# Example:
# ./build.sh <working dir> <working image> <version>

CURRENT_DIR="$(pwd)"
WORKING_IMAGE=$2
IMAGE_VERSION=$3
WORKING_DIR="$1/$WORKING_IMAGE/$IMAGE_VERSION"
IMAGE_NAME=cshawaus/$2:$3

echo "Changing directory to: $WORKING_DIR"
cd $WORKING_DIR

echo "Building $IMAGE_NAME"
docker build -t $IMAGE_NAME .

echo "Changing directory back to: $CURRENT_DIR"
cd $CURRENT_DIR
