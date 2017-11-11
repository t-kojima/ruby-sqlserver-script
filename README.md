# ruby-sqlserver-script

## これは何ですか？
SQLServerに対し何らかの処理を施したSQLを発行するRubyスクリプトのテンプレートです。

### どういう使い方をしますか？
1. ファイルだったりSQLだったりから入力データを作成する。
1. 何らかの処理を施したり、施さなかったりする。
1. 処理したデータをUPDATEしたりINSERTしたりする。

### ストアドで良くないですか？
ファイルの取込が面倒なので…

## 環境
- Linuxの場合FreeTDSが必要です。
- Windowsの場合RubyのDevkitが必要です。

## 使い方
- gemインストール  
`bundle install --path vendor/bundle`
    - SQLServer 2008 R2 以前  
    `gem 'activerecord-sqlserver-adapter', '~>4.1.0'`
    - SQLServer 2013 以降  
    `gem 'activerecord-sqlserver-adapter'`
- `database.yml`を修正
- `database.rb`にモデルクラス（ActiveRecord）を追加
- `script.rb`を修正
- `# ruby script.rb`で実行
