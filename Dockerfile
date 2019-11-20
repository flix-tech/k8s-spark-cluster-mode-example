#FROM gcr.io/spark-operator/spark-py:v2.4.4
FROM dcr.mfb.io/data/spark-py:2.4.4
USER root

COPY . /opt/example

WORKDIR /opt/example

RUN apk add curl

# install TASK ( alternative to make https://taskfile.dev/#/ )
RUN curl -sL https://taskfile.dev/install.sh | sh \
	&& mv bin/task /usr/local/bin/task
