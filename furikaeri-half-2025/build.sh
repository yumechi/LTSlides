#!/bin/bash

# スライドビルドスクリプト
echo "🎯 スライドをビルドしています..."

# HTMLファイルを生成
# echo "📄 HTMLファイルを生成中..."
# npx @marp-team/marp-cli furikaeri-half-2025.md --html -ofurikaeri-half-2025.html --allow-local-files

# PDFファイルを生成
echo "📑 PDFファイルを生成中..."
npx @marp-team/marp-cli furikaeri-half-2025.md --pdf -o furikaeri-half-2025.pdf --allow-local-files

echo "✅ ビルド完了!"
# echo "- furikaeri-half-2025.html"
echo "- furikaeri-half-2025.pdf"
