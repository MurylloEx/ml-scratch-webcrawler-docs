#!/bin/sh

whoami

cd .cache
ls -la

ls -R puppeteer

cd ../

#!/bin/bash
mv ".cache/puppeteer/chrome/linux-1108766/chrome-linux/chrome" ".cache/puppeteer/chrome/linux-1108766/chrome-linux/chrome_original"
echo "#!/bin/bash" > ".cache/puppeteer/chrome/linux-1108766/chrome-linux/chrome"
echo "exec \$(dirname \"\$0\")/chrome_original --no-sandbox \"\$@\"" >> ".cache/puppeteer/chrome/linux-1108766/chrome-linux/chrome"
chmod +x ".cache/puppeteer/chrome/linux-1108766/chrome-linux/chrome"
ln -sf "\$(dirname \"\$0\")/.cache/puppeteer/chrome/linux-1108766/chrome-linux/chrome" "/usr/local/bin/chromium"

npm run build
