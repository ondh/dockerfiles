FROM pch18/baota:clear
LABEL maintainer="Tonio"

RUN bash /www/server/panel/install/install_soft.sh 0 install nginx 1.17 \
    && bash /www/server/panel/install/install_soft.sh 0 install php 5.6 || echo 'Ignore Error' \
    && echo '["linuxsys", "webssh", "nginx", "php-5.6"]' > /www/server/panel/config/index.json \
    && yum clean all \
    && rm -rf /www/server/php/56/src \
    && rm -rf /www/server/nginx/src

VOLUME ["/www"]