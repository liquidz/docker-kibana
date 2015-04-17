FROM elasticsearch:1.5
MAINTAINER uochan

ENV KIBANA_NAME kibana-4.0.2-linux-x64

WORKDIR /usr/local/src
RUN wget "https://download.elastic.co/kibana/kibana/$KIBANA_NAME.tar.gz"

WORKDIR /usr/local
RUN tar xvf src/$KIBANA_NAME.tar.gz
RUN ln -s $KIBANA_NAME kibana

RUN ln -s /usr/local/kibana/bin/kibana /bin
