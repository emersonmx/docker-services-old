FROM nginx:1.15

LABEL \
    maintainer="emersonmx@gmail.com" \
    name="emersonmx's NGINX 1.15 image" \
    image="nginx:2.4" \
    vendor="emersonmx" \
    license="MIT" \
    build-date="2018-06-12"

ARG LOCAL_USER_ID
ARG LOCAL_GROUP_ID

RUN groupadd -g ${LOCAL_GROUP_ID} ${LOCAL_USER:-dev} \
    && useradd --shell /bin/bash -u ${LOCAL_USER_ID} -o -c "" -m ${LOCAL_USER:-dev} -g ${LOCAL_GROUP_ID}
