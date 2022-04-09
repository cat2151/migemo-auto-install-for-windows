# migemo-auto-install-for-windows

[C/Migemo](https://www.kaoriya.net/software/cmigemo/) を、Windowsですぐ使えるよう自動インストールします。

# Features
- 以下を自動化します :
  - C/Migemo をダウンロードする
  - C/Migemo の64bit Windows 用DLLを、カレントディレクトリにインストールする
    - （`migemoを使うexeのあるディレクトリ`で実行することを想定しています）
  - dict/migemo-dict 等(UTF-8)をカレントディレクトリ配下にインストールする

- コマンドプロンプトからこのコマンドを実行するだけで自動ですべてが完了します。面倒な操作は不要です。
```
curl.exe -L https://raw.githubusercontent.com/cat2151/migemo-auto-install-for-windows/main/install_cmigemo.bat --output install_cmigemo.bat && install_cmigemo.bat
```

# Requirement
- Windows 64bit
- 3MB程度の空き容量
- migemoを使うexeの置き場所のフルパス名に半角スペースや日本語を含まないこと（migemoに関係なくexe側の問題かもしれませんが取り急ぎ）

# Usage
- 前述のコマンドを実行します。
- （migemoを使うexeを配布したい。migemoもインストールしてもらいたい。何かいい手はないかなあ…）と思ったら、どうぞご利用ください。
