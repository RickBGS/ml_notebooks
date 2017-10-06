FROM continuumio/anaconda3

MAINTAINER Ricardo Silva <rick.silva@gmail.com>

ENV NOTEBOOKS_HOME /opt/notebooks

RUN apt-get update && \
    apt-get -y install build-essential

# RUN pip install xgboost

RUN git clone --recursive https://github.com/dmlc/xgboost /tmp/xgboost/ && \
    cd /tmp/xgboost && \
    make -j4 && \
    cd /tmp/xgboost/python-package && \
    python setup.py install --user && \
    conda install libgcc -y

RUN /opt/conda/bin/conda install jupyter -y --quiet

RUN mkdir -p $NOTEBOOKS_HOME
WORKDIR $NOTEBOOKS_HOME

EXPOSE 8888

COPY . $NOTEBOOKS_HOME/

CMD ["./docker-entrypoint.sh"]