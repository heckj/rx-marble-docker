FROM alpine:3.10
WORKDIR /work
COPY run.sh /work
RUN chmod +x /work/run.sh
RUN apk update
RUN apk add python3
# RUN apk add imagemagick librsvg
RUN pip3 install rxmarbles
# volume mount point
RUN mkdir -p /data
WORKDIR /data
ENTRYPOINT /work/run.sh