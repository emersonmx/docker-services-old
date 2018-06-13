FROM nginx:1.15-alpine

LABEL \
    maintainer="emersonmx@gmail.com" \
    name="emersonmx's NGINX 1.15 image" \
    image="nginx:2.4" \
    vendor="emersonmx" \
    license="MIT" \
    build-date="2018-06-12"

ARG LOCAL_USER_ID
ARG LOCAL_GROUP_ID

RUN addgroup -g ${LOCAL_GROUP_ID} dev \
    && adduser -D -s /bin/sh -u ${LOCAL_USER_ID} -G dev dev
