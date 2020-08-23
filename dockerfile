FROM alpine:3.12.0

LABEL maintainer "Miyakawa <momijinn.aka@gmail.com>"

RUN apk update --no-cache && \
    apk add --no-cache g++=9.3.0-r2 make=4.3-r0

COPY ./startup/docker-entorypoint.sh /opt
RUN chmod +x /opt/docker-entorypoint.sh

ENTRYPOINT [ "./opt/docker-entorypoint.sh" ]