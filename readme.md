# run

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