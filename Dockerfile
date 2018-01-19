# Python 3.5.2 :: Anaconda 4.2.0 (64-bit)
FROM continuumio/anaconda3:4.2.0

RUN useradd -m python_user
WORKDIR /home/python_user

RUN conda install -y -c menpo opencv==3.1.0
RUN conda install -y -c conda-forge tensorflow==1.4.0
RUN conda install -y -c conda-forge bottle==0.12.9
RUN conda install -y pydot==1.2.3 graphviz==2.38.0

ADD ./public /home/python_user/public
ADD ./test.ipynb /home/python_user/test.ipynb
ADD ./main.ipynb /home/python_user/main.ipynb
RUN chown python_user -R /home/python_user/public /home/python_user/test.ipynb /home/python_user/main.ipynb

USER python_user

# bottle server
EXPOSE 8088
# jupiter notebook
EXPOSE 8888
ENTRYPOINT ["/bin/sh", "-c", "jupyter notebook --ip=0.0.0.0 --port=8888"]