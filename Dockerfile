FROM ros:indigo
# place here your application's setup specifics

COPY install-scripts/base.sh /tmp/head-install-scripts/base.sh
RUN /tmp/head-install-scripts/base.sh

COPY install-scripts/ros.sh /tmp/head-install-scripts/ros.sh
RUN /tmp/head-install-scripts/ros.sh

COPY install-scripts/head.sh /tmp/head-install-scripts/head.sh
RUN /tmp/head-install-scripts/head.sh
