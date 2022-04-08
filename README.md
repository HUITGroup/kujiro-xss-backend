# kujiro-xss-backend

2022/04/08 に行われた HUIT 新歓の 「誰ですか こんなところにXSS仕掛けたのは」(kujiro) で使用された XSS デモ用の Go 製バックエンド API サーバです。

[フロントエンドはこちら](https://github.com/HUITGroup/kujiro-xss-frontend)

docker compose を使用して構築します。

## 事前準備

1. SSLの証明書(ssl.crt)と秘密鍵(ssl.key)をディレクトリ内に置く
1. [nginx.conf](nginx.conf) の server_name を公開したいドメインに修正する

## 構築

```bash
docker compose up -d
```

## API仕様

[api.md](doc/api.md) にあります。
