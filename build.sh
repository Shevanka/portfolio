#!/bin/sh
# Re-export PDF after editing index.html / style.css
CHROME_BIN="/c/Program Files/Google/Chrome/Application/chrome.exe"
if [ -f "$CHROME_BIN" ]; then
    "$CHROME_BIN" --headless=new --disable-gpu --run-all-compositor-stages-before-draw --print-to-pdf="Portfolio.pdf" --no-pdf-header-footer "index.html"
elif command -v wkhtmltopdf >/dev/null 2>&1; then
    wkhtmltopdf -q --enable-local-file-access -s A4 -T 0 -R 0 -B 0 -L 0 index.html Portfolio.pdf
else
    echo "No supported PDF engine found (Google Chrome or wkhtmltopdf)."
fi
