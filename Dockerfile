FROM bash:4
ADD https://storage.googleapis.com/kubernetes-release/release/v1.7.6/bin/darwin/amd64/kubectl /usr/local/bin/kubectl
RUN chmod a+x /usr/local/bin/kubectl
