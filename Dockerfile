FROM alpine:3.14
RUN apk add git bash openssh vim nano

WORKDIR /root
ADD id_rsa .ssh/id_rsa
ADD id_rsa.pub .ssh/id_rsa.pub

ARG GITHUB_USERNAME

RUN git config --global user.email "$GITHUB_USERNAME@github.com"
RUN git config --global user.name $GITHUB_USERNAME
RUN git config --global --add safe.directory /root/repo

WORKDIR /root/repo

ENTRYPOINT ["bash"]
