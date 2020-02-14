FROM alpine

MAINTAINER simojenki

RUN apk add --update wget tar gzip && \
	mkdir /speedtest && \
	cd /tmp && \
	wget -O speedtest.tgz 'https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-x86_64-linux.tgz' && \
	cd /speedtest && \
	tar xvfz /tmp/speedtest.tgz && \
	rm -rf /var/cache/apk/* && \
	rm /tmp/*

WORKDIR /speedtest

ENTRYPOINT [ "./speedtest" ]


