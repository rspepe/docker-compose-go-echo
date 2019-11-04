# golang-docker-compose with echo

* 手軽にgolangでWebサーバを立ち上げるためのリポジトリ。

## 実行に必要なもの

* docker-composeが動作する環境

## 実行方法

* 以下のコマンドでライブリロード状態でmain.goが実行されWeb frameworkのEchoのサンプルWebサーバが立ち上がる。

```
docker-compose up
```

## ブラウザテスト

ブラウザで
http://localhost:8080/
にアクセスするとHello, World!というメッセージが表示されます。

### ライブリロードを体感

* go/src/main.goのHello, World!を変更して保存してみてください。ビルド後、ブラウでをリロードしてみてください。

## 環境削除

* 停止シグナル後も死んだコンテナが残っているので以下のコマンドで削除ができます。

```
docker-compose down
```