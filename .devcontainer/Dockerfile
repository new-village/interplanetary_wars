# 安定版Flutterを含むイメージ（Google公式）
FROM ubuntu:22.04

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
  curl git unzip xz-utils zip libglu1-mesa wget clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev ca-certificates software-properties-common apt-transport-https gnupg \
  && apt-get clean

# 環境変数設定
ENV FLUTTER_VERSION=3.19.3
ENV FLUTTER_HOME=/opt/flutter
ENV PATH="$FLUTTER_HOME/bin:$FLUTTER_HOME/bin/cache/dart-sdk/bin:$PATH"

# Flutter SDKのインストール（Stableチャンネル）
RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1 $FLUTTER_HOME \
  && flutter doctor

# Webサポート有効化（必要に応じて）
RUN flutter config --enable-web