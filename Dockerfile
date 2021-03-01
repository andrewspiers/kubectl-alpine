FROM alpine

RUN wget "https://dl.k8s.io/release/$(wget -q -O - https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -O /usr/bin/kubectl \
    && chmod +x /usr/bin/kubectl

ENTRYPOINT ["/usr/bin/kubectl"]
