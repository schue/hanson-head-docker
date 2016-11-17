#!/bin/bash
nvidia-docker run \
        -it \
        --env="DISPLAY" \
        --env="QT_X11_NO_MITSHM=1" \
        --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
        --volume="$HOME:/home/user" \
        --device=/dev/snd:/dev/snd \
        --device=/dev/video0:/dev/video0 \
        docker.brainfood.com/head:latest bash -c "pulseaudio --system & cd /srv/head/HEAD/scripts && ./dev.sh"
#        docker.brainfood.com/head:latest bash
