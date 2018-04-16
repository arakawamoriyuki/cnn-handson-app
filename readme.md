# CNNハンズオン

機械学習で何か作る際の一連の流れを通して、身近な問題解決手段として選べるようにする。

今回は手軽なkerasを利用してCNN(画像分類)を行います。

1. データ収集(データベース、データセット、スクレイピング)
2. 加工(リサイズ、水増し、画像処理)
3. トレーニング(モデル設計、テスト)
4. アプリケーションに組み込み

## run

1. docker build and run

```
$ docker build --rm -t handson-app .
$ docker run -d -p 8888:8888 -p 8088:8088 -v "$(pwd)/volume:/home/python_user/volume" --name handson-app handson-app
<!--
$ docker exec -it handson-app bash
$ docker stop handson-app && docker rm handson-app
$ docker rmi handson-app continuumio/anaconda3
-->
```

2. [go jupiter notebook](http://localhost:8888/tree)

3. select test.ipynb and run (shift + enter)

4. select main.ipynb and run (shift + enter)