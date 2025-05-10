#!/bin/bash

# Podman を使用して Marp CLI コンテナを実行し、Markdown を PDF に変換するスクリプト

# ワークスペースのルートディレクトリ
workspace_dir="$(pwd)"

# Markdown ファイルを検索して PDF に変換
find "$workspace_dir" -type f -name "*.md" | while read -r markdown_file; do
    # ファイルのディレクトリと名前を取得
    dir_name="$(dirname "$markdown_file")"
    base_name="$(basename "$markdown_file" .md)"

    # 出力 PDF ファイルのパス
    output_pdf="$dir_name/$base_name.pdf"

    # Podman コマンドで Marp CLI を実行
    echo "Converting $markdown_file to $output_pdf using Podman..."
    podman run --rm -v "$workspace_dir:/slides" -w "/slides" ghcr.io/marp-team/marp-cli:latest \
        "$markdown_file" --pdf -o "$output_pdf"

    if [ $? -eq 0 ]; then
        echo "Successfully converted: $output_pdf"
    else
        echo "Failed to convert: $markdown_file" >&2
    fi
done

# 実行権限を付与するには以下を実行してください
# chmod +x convert_with_podman.sh
