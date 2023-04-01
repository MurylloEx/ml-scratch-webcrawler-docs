#!/bin/sh

cd ".cache/puppeteer/chrome/linux-*/chrome-linux"

mv "chrome" "chrome_original"

echo "#!/bin/bash" > "chrome"
echo "exec \$(dirname \"\$0\")/chrome_original --no-sandbox \"\$@\"" >> "chrome"

chmod +x "chrome"
ln -sf "\$(dirname \"\$0\")/chrome" "/usr/local/bin/chromium"

npm run build
