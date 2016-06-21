#!/bin/bash

BASE_XCODE_DIR="${HOME}/Library/Developer/Xcode"
TEMPLATES_XCODE_DIR="${BASE_XCODE_DIR}/Templates"
FILE_TEMPLATES_XCODE_DIR="${TEMPLATES_XCODE_DIR}/File Templates"

echo "Starting installation of Serializable file template installation."

# Check if templates dir exists
if [ ! -d "${TEMPLATES_XCODE_DIR}" ]; then
  echo "Creating Templates directory, because it didn't exist."
  mkdir "${TEMPLATES_XCODE_DIR}"
fi

# Check if file templates dir exists
if [ ! -d "${FILE_TEMPLATES_XCODE_DIR}" ]; then
  echo "Creating File Templates directory, because it didn't exist."
  mkdir "${FILE_TEMPLATES_XCODE_DIR}"
fi

# Copy the files
echo "Copying Serializable file template."
cp -r Serializable "${FILE_TEMPLATES_XCODE_DIR}/"
echo "Serializable file template installation done."
