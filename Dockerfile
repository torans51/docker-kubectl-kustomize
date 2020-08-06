FROM bash:latest
RUN apk --no-cache add dumb-init gettext ca-certificates openssl \
    && wget https://storage.googleapis.com/kubernetes-release/release/$(wget https://storage.googleapis.com/kubernetes-release/release/stable.txt -q -O -)/bin/linux/amd64/kubectl -q -O /usr/local/bin/kubectl \
    && chmod a+x /usr/local/bin/kubectl \
    && apk --no-cache del ca-certificates openssl
ENTRYPOINT ["/usr/bin/dumb-init","--","/usr/local/bin/docker-entrypoint.sh"]
CMD ["bash"]
