# LTSlides

このリポジトリ自体はLTスライドを公開していたものになりますが、実質はアーカイブ専用となっています。
最新のものについては [speakerdeck](https://speakerdeck.com/yumechi) に移行しています。

## セットアップ

podman を使っているので、動作する状況にしてください。
GitHub CodeSpaces で動作させる場合は Ubuntu 22.04 以降を利用してください。
(.devcontainer 配下の設定を参考にしてください)

## ファイルの取得と pdf 変換
### ファイルの取得

下記コマンドを実行すると、各ブランチの PITCHME.md ファイルを取得し、 `{branch_name}/{branch_name}.md` という名前で保存します。

```bash
bash branch_copy.sh
```

ただし画像ファイルについては元々利用していなかったこともあり拾い上げていません。

### pdf 変換

```bash
bash convert_with_podman.sh
```

podman と公開されている marp-cli の docker イメージを使って pdf 変換を行います。
GitHub の CodeSpaces で実行できることを確認済みです。

## LT Slides For GitPitch

LTスライド公開用リポジトリ。問題ないものしか上げません。（問題ないものしかそもそも公開できないでしょ）
GitPitch用なので、各ブランチにLT資料を作っています。
現在は pdf 変換のためすべての資料を main ブランチに持ってきてきます。

過去のもの

|DATE|TITLE|SLIDE PAGE|
|:-:|:-:|:-:|
| 2017/10/14 | LTをしようというLT| [https://www.yumechi.work/LTSlides/ws-LT_56/ws-LT_56.html](https://www.yumechi.work/LTSlides/ws-LT_56/ws-LT_56.html) |
| 2017/10/17 | 号外：競技プログラミングは役に立たない？| [https://www.yumechi.work/LTSlides/tech_meetup-LT_1/tech_meetup-LT_1.html](https://www.yumechi.work/LTSlides/tech_meetup-LT_1/tech_meetup-LT_1.html) |
| 2017/10/31 | Linterをね、使っていく | [https://www.yumechi.work/LTSlides/tech_meetup-LT_3/tech_meetup-LT_3.html](https://www.yumechi.work/LTSlides/tech_meetup-LT_3/tech_meetup-LT_3.html) |
| 2017/11/21 | 新しい言語を触る楽しみ | [https://www.yumechi.work/LTSlides/tech_meetup-LT_6/tech_meetup-LT_6.html](https://www.yumechi.work/LTSlides/tech_meetup-LT_6/tech_meetup-LT_6.html) |
| 2017/11/28 | 気軽に始めるアウトプット | [https://www.yumechi.work/LTSlides/tech_meetup-lt_7/tech_meetup-lt_7.html](https://www.yumechi.work/LTSlides/tech_meetup-lt_7/tech_meetup-lt_7.html) |
| 2018/07/01 | 貴族LT大会#1 エンジニアと可能性 | [https://www.yumechi.work/LTSlides/kizokukai-LT-1_1/kizokukai-LT-1_1.html](https://www.yumechi.work/LTSlides/kizokukai-LT-1_1/kizokukai-LT-1_1.html) |
| 2018/07/01 | 貴族LT大会#1 2本目: 小説と世界 | [https://www.yumechi.work/LTSlides/kizokukai-LT-1_2/kizokukai-LT-1_2.html](https://www.yumechi.work/LTSlides/kizokukai-LT-1_2/kizokukai-LT-1_2.html) |
| 2018/07/01 | 貴族LT大会#1 3本目: SNSアカウントとマネジメント | [https://www.yumechi.work/LTSlides/kizokukai-LT-1_3/kizokukai-LT-1_3.html](https://www.yumechi.work/LTSlides/kizokukai-LT-1_3/kizokukai-LT-1_3.html) |
| 2018/09/18 | Pycon JPで転職してみた人のホンネ(speacker deckへのリンクです) | [https://speakerdeck.com/yumechi/pycon-jpdezhuan-zhi-sitemitaren-falsehonne](https://speakerdeck.com/yumechi/pycon-jpdezhuan-zhi-sitemitaren-falsehonne) |
| 2018/10/19 | 【初心者歓迎】サポーターズCOLABビギナーズLT会VOL.1 「前に立ってみよう」 | [https://www.yumechi.work/LTSlides/colab-beginner-lt-1/colab-beginner-lt-1.html](https://www.yumechi.work/LTSlides/colab-beginner-lt-1/colab-beginner-lt-1.html) |
| 2018/11/12 | 【初心者歓迎】サポーターズCOLABビギナーズLT会VOL.2 「Colab勉強会で登壇するのはいいぞ」 | [https://www.yumechi.work/LTSlides/colab-beginner-lt-2/colab-beginner-lt-2.html](https://www.yumechi.work/LTSlides/colab-beginner-lt-2/colab-beginner-lt-2.html) |
| 2018/11/29, 2019/02/04 | 【サポーターズ】CoLabのみんなで技術書デビュー！しちゃおう！ | [Scrapboxへのリンク](https://scrapbox.io/yumechi/%E3%80%90%E3%82%B5%E3%83%9D%E3%83%BC%E3%82%BF%E3%83%BC%E3%82%BA%E3%80%91CoLab%E3%81%AE%E3%81%BF%E3%82%93%E3%81%AA%E3%81%A7%E6%8A%80%E8%A1%93%E6%9B%B8%E3%83%87%E3%83%93%E3%83%A5%E3%83%BC%EF%BC%81%E3%81%97%E3%81%A1%E3%82%83%E3%81%8A%E3%81%86%EF%BC%81) |
| 2018/12/01 | 貴族LT大会#2 今年の発表を振り返る | [https://www.yumechi.work/LTSlides/kizokukai-LT-2_1/kizokukai-LT-2_1.html](https://www.yumechi.work/LTSlides/kizokukai-LT-2_1/kizokukai-LT-2_1.html) |
| 2018/12/01 | 貴族LT大会#2 プレゼンツールの紹介 | [https://www.yumechi.work/LTSlides/kizokukai-LT-2_2/kizokukai-LT-2_2.html](https://www.yumechi.work/LTSlides/kizokukai-LT-2_2/kizokukai-LT-2_2.html) |
| 2018/01/28 | 【サポーターズ勉強会】本当に資格は意味がないのか？今一度考える資格勉強のあり方 | [https://www.yumechi.work/LTSlides/colab-qualifications-20190128/colab-qualifications-20190128.html](https://www.yumechi.work/LTSlides/colab-qualifications-20190128/colab-qualifications-20190128.html) |

その場で資料作って発表してるやつは手元にないものもあるので、とりあえずあるものだけ 〜（・ω・）〜
