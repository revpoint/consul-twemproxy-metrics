FROM python:3-slim

ADD requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

ADD consul-twemproxy-metrics /usr/local/bin/

ENTRYPOINT ["consul-twemproxy-metrics"]
