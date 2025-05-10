#!/bin/bash

# masterブランチに切り替え
git checkout master

# 作業用ディレクトリを作成
mkdir -p branches

# すべてのブランチを取得
branches=$(git branch -r | grep -v '\->' | grep -v 'origin/HEAD' | sed 's/origin\///')

for branch in $branches; do
  echo "Processing branch: $branch"
  
  # ブランチをチェックアウト
  git checkout $branch
  
  # PITCHME.md が存在するか確認
  if [ -f "PITCHME.md" ]; then
    # 保存先ディレクトリを作成
    mkdir -p "branches/$branch"
    
    # PITCHME.md をコピー
    cp PITCHME.md "branches/$branch/$branch.md"
  else
    echo "PITCHME.md not found in branch: $branch"
  fi
done

# masterブランチに戻る
git checkout master

# 取得したファイルを master に追加
cp -r branches/* .
rm -rf branches
git add .
git commit -m "Add PITCHME.md files from all branches"
