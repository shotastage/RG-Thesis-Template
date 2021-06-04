#!/usr/bin/env bash

if [ -e ../thesis.pdf ]; then
    curl \
    -F 'payload_json={"username": "Watcher", "content": 論文が更新されました}' \
    -F "file1=@../thesis.tex" \
    $WEBHOOK_URL
else
   curl \
    -H "Content-Type: application/json" \
    -d '{"username": "Watcher", "content": "PDFの更新に失敗しました"}' \
    $WEBHOOK_URL
fi
