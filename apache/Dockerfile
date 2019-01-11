FROM httpd:2.4

ARG LOCAL_USER_ID
ARG LOCAL_GROUP_ID

RUN groupadd -g ${LOCAL_GROUP_ID} ${LOCAL_USER:-dev} \
    && useradd --shell /bin/bash -u ${LOCAL_USER_ID} -o -c "" -m ${LOCAL_USER:-dev} -g ${LOCAL_GROUP_ID}

COPY httpd.conf /usr/local/apache2/conf/
COPY extra/httpd-vhosts.conf /usr/local/apache2/conf/extra/
