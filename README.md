ubuntu-picard
=========================

Based from [dorowu/ubuntu-desktop-lxde-vnc](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc/)

Quick Start
```
docker run -p 6080:80 \ 
    -e HTTP_PASSWORD=mypassword \
    -e RESOLUTION=1920x1080 \
    -e USER=myusername \
    -e PASSWORD=mypassword \
    -v /mnt/unionfs/music:/mnt/unionfs/music \
    physk/ubuntu-picard:latest
```