FROM alpine:3.16
RUN mkdir -pv /usr/src/app
WORKDIR /usr/src/app/
RUN apk update && apk add --no-cache \
    bash ffmpeg wget unzip \
    python3 py3-pip mediainfo
RUN pip3 install gdown yt-dlp
ADD . /usr/src/app/
RUN chmod a+x compress.sh
CMD ./compress.sh
