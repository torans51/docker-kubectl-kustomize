FROM bash:4
RUN apk --no-cache add gettext
ADD https://storage.googleapis.com/kubernetes-release/release/v1.8.1/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod a+x /usr/local/bin/kubectl
