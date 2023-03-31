#!/bin/sh

cd .cache/puppeteer/chrome

mv "linux-1108766/chrome-linux/chrome" "linux-1108766/chrome-linux/chrome_original"
echo "#!/bin/bash" > "linux-1108766/chrome-linux/chrome"
echo "exec \$(dirname \"\$0\")/chrome_original --no-sandbox \"\$@\"" >> "linux-1108766/chrome-linux/chrome"
chmod +x "linux-1108766/chrome-linux/chrome"
ln -sf "\$(dirname \"\$0\")/linux-1108766/chrome-linux/chrome" "/usr/local/bin/chromium"

npm run build
