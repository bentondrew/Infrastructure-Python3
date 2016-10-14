FROM alpine:3.4
MAINTAINER Benton Drew <benton.s.drew@drewantech.com>
RUN apk add --no-cache python3
RUN addgroup -S -g 224 python_user && \
  adduser -u 224 -S -G python_user -h /home/python_user -s /sbin/nologin -D python_user && \
  chown -R python_user:python_user /home/python_user
USER python_user
WORKDIR /home/python_user
ENTRYPOINT ["python3"]
