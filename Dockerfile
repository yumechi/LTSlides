# ベースイメージとして Marp CLI を使用
FROM ghcr.io/marp-team/marp-cli:latest

# 作業ディレクトリを設定
WORKDIR /slides

# 必要なファイルをコンテナにコピー
COPY . /slides

# デフォルトのコマンドを設定
CMD ["marp"]
