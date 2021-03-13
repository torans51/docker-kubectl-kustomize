FROM bash:latest
RUN apk --no-cache add dumb-init gettext curl ca-certificates openssl \
    && curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && mv kubectl /usr/local/bin/kubectl \
    && chmod a+x /usr/local/bin/kubectl \
    && curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash \
	&& mv kustomize /usr/local/bin/kustomize \
	&& chmod a+x /usr/local/bin/kustomize \
    && apk --no-cache del curl ca-certificates openssl
ENTRYPOINT ["/usr/bin/dumb-init","--","/usr/local/bin/docker-entrypoint.sh"]
CMD ["bash"]
