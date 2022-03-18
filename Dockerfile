FROM alpine
MAINTAINER John Saady <john@saady.page>
RUN apk --no-cache add curl jq bash
COPY dyndns.sh /
USER nobody
ENTRYPOINT exec /dyndns.sh
