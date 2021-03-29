FROM alpine:3.13

RUN apk --no-cache add --update discount

VOLUME /data

WORKDIR /data

ENTRYPOINT [ "/usr/bin/markdown" ]
CMD [ "-V" ]
