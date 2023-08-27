FROM alpine:3.12

RUN cd /opt \
 && apk update \
 && apk upgrade \
 && apk add ca-certificates \
 && update-ca-certificates \
 && apk add --update openjdk8-jre unzip bash \
 && wget http://archive.apache.org/dist/jmeter/binaries/apache-jmeter-5.5.tgz \
 && tar -xzf apache-jmeter-5.5.tgz \
 && rm apache-jmeter-5.5.tgz
 

ENV JMETER_HOME /opt/apache-jmeter-5.5

# Add Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH

COPY entrypoint.sh /

WORKDIR	${JMETER_HOME}

ENTRYPOINT ["/entrypoint.sh"]