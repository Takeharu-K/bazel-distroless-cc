Bazelでビルドしたバイナリをdistrolessにコピーして実行するまで

grc.io/distroless/cc を使用した

軽量な実行コンテナが獲得できた

# 使い方
通常(distroless:latest)の場合
```
docker build -t test .
docker run test
```

debug(distroless:debug)の場合(busybox入り)
```
docker run --entrypoint=sh -it test
```
