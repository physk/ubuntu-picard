FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt install apt-transport-https ca-certificates curl software-properties-common -y && \
    add-apt-repository ppa:musicbrainz-developers/stable -y && \ 
    apt update && \
    apt install picard language-pack-en -y && \
    update-locale LANG=en_GB.utf8 LC_MESSAGES=POSIX

# COPY /root /