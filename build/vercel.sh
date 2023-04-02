#!/bin/sh

rootDir = $(pwd)

# Check if .cache/puppeteer/chrome folder exists before applying the "chrome patch" to disable sandbox
if [ -d ".cache/puppeteer/chrome" ]; then

  echo "[🐞] Found Puppeteer chromium folder..."
  echo "[🐞] Applying patch to disable sandbox of chromium..."
  echo "[🐞] Current working directory: $rootDir"

  # Change current directory to Chromium binary folder
  cd .cache/puppeteer/chrome/linux-*/chrome-linux

  # Creating a script proxy that transfer the received args to original chrome executable
  mv "chrome" "chrome_original"
  mv "$rootDir/build/chrome.sh" "./chrome.sh"

  # Adding execute permission to script proxy
  chmod +x "chrome"

  echo "[🐞] Successfully applied patch to disable chromium sandbox..."
else
  echo "[🐞] Folder .cache/puppeteer not found!"
  echo "[🐞] Unable to apply chromium --no-sandbox patch, skipping..."
fi
