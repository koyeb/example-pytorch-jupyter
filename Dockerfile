FROM ubuntu:latest

ARG PYTORCH_VERSION=2.3.1
ARG PYTHON_VERSION=3.11

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /workspace

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt install -y --no-install-recommends build-essential supervisor git wget curl libgl1 software-properties-common cuda-toolkit && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt install -y --no-install-recommends python${PYTHON_VERSION}-dev python${PYTHON_VERSION}-venv && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen


RUN rm -f /usr/bin/python3 && \
    rm -f /usr/lib/python${PYTHON_VERSION}/EXTERNALLY-MANAGED && \
    ln -s /usr/bin/python${PYTHON_VERSION} /usr/bin/python && \
    ln -s /usr/bin/python${PYTHON_VERSION} /usr/bin/python3 && \
    curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py && \
    python /tmp/get-pip.py &&  \
    rm -f /tmp/get-pip.py

RUN pip install --upgrade --no-cache-dir torch===${PYTORCH_VERSION} jupyterlab ipywidgets jupyter-archive jupyter_contrib_nbextensions notebook===6.5.7
RUN jupyter contrib nbextension install --user && \
    jupyter nbextension enable --py widgetsnbextension


COPY docker-entrypoint.sh /workspace/docker-entrypoint.sh 
RUN chmod +x /workspace/docker-entrypoint.sh

ENTRYPOINT ["/workspace/docker-entrypoint.sh"]
