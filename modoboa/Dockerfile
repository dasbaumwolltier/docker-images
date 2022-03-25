FROM python:3.7-alpine as base

ENV VIRTUAL_ENV=/opt/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

FROM base as build

RUN apk add --update openssl librrd python3-dev libffi-dev gcc g++ musl-dev libxml2-dev libxslt-dev \
    libressl-dev jpeg-dev rrdtool-dev file make \
    && rm -rf /var/cache/apk/*
RUN python3 -m venv $VIRTUAL_ENV
WORKDIR /tmp
COPY requirements.txt /tmp
COPY test-requirements.txt /tmp
RUN python -m pip install -U pip 
RUN pip install -r requirements.txt -r test-requirements.txt

FROM base as run
COPY --from=build $VIRTUAL_ENV $VIRTUAL_ENV
RUN apk add --no-cache --update librrd libxslt libjpeg libressl git rrdtool \
    && rm -rf /var/cache/apk/*
RUN mkdir /code
WORKDIR /code

ENTRYPOINT sh -c "python3 setup.py develop && cd test_project && python3 manage.py migrate && python3 manage.py load_initial_data && python3 manage.py runserver 0:8000"