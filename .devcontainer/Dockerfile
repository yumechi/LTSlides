# ベースイメージとして Ubuntu 22.04 または 24.04 を使用
ARG VARIANT="22.04"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-ubuntu-${VARIANT}

# 必要なツールをインストール
RUN apt-get update && apt-get install -y \
    curl \
    git \
    podman \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリを設定
WORKDIR /workspaces/LTSlides
