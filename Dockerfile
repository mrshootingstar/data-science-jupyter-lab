ARG PYTHON_VERSION=3.6.0
FROM python:${PYTHON_VERSION}

COPY ./requirements.txt /tmp/requirements/

RUN apt-get update \
    && apt-get install -y graphviz \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -U pip \
   && pip install -r /tmp/requirements//requirements.txt

EXPOSE 8888
