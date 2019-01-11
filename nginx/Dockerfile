FROM nginx:1.15-alpine

ARG LOCAL_USER_ID
ARG LOCAL_GROUP_ID

RUN addgroup -g ${LOCAL_GROUP_ID} dev \
    && adduser -D -s /bin/sh -u ${LOCAL_USER_ID} -G dev dev

COPY conf.d/default.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/
