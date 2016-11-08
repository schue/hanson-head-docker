ROM ros:indigo

#NVIDIA stuff
LABEL com.nvidia.volumes.needed="nvidia_driver"
ENV PATH /usr/local/nvidia/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}

COPY lib/base.sh /tmp/head-install-scripts/base.sh
RUN /tmp/head-install-scripts/base.sh

COPY lib/ros.sh /tmp/head-install-scripts/ros.sh
RUN /tmp/head-install-scripts/ros.sh

COPY lib/head.sh /tmp/head-install-scripts/head.sh
RUN /tmp/head-install-scripts/head.sh

RUN adduser --disabled-password --uid "1000" --gecos ",,," --home "/home/user" --shell "/bin/bash" "user" && \
    echo "user:password" | chpasswd
