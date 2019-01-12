FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt install apt-transport-https ca-certificates curl software-properties-common -y && \
    add-apt-repository ppa:musicbrainz-developers/stable -y && \ 
    apt update && \
    apt install picard language-pack-en -y && \
    locale-gen en_GB.UTF-8 && \
    update-locale LANG=en_GB.UTF-8 && \
    echo "export LANG=en_GB.UTF-8" >> /etc/skel/.bashrc && \
    echo "export LC_ALL=en_GB.UTF-8" >> /etc/skel/.bashrc

COPY /root /