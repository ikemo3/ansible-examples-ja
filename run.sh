#!/bin/sh

echo '実行する内容を選んでください。'
echo '1: Dockerコンテナの起動'
echo '2: controllerコンテナへの接続'
echo '3: targetコンテナへの接続'
echo '4: Dockerコンテナの停止'
read ANSWER

case $ANSWER in
  "1")
    docker-compose up -d --build
    ;;
  "2")
    docker-compose exec controller /bin/bash
    ;;
  "3")
    docker-compose exec target /bin/bash
    ;;
  "4")
    docker-compose down
    ;;
  *)
    echo '[1,2,3,4]のいずれかの文字列を入力してください。'
    ;;
esac
