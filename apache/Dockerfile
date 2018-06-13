FROM httpd:2.4

LABEL \
    maintainer="emersonmx@gmail.com" \
    name="emersonmx's Apache 2.4 image" \
    image="httpd:2.4" \
    vendor="emersonmx" \
    license="MIT" \
    build-date="2017-08-26"

ARG LOCAL_USER_ID
ARG LOCAL_GROUP_ID

RUN groupadd -g ${LOCAL_GROUP_ID} ${LOCAL_USER:-dev} \
    && useradd --shell /bin/bash -u ${LOCAL_USER_ID} -o -c "" -m ${LOCAL_USER:-dev} -g ${LOCAL_GROUP_ID}

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY extra/httpd-vhosts.conf /usr/local/apache2/conf/extra/
