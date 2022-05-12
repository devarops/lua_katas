FROM ubuntu:22.04
WORKDIR /workdir
COPY . /workdir
RUN apt update && apt install --yes \
    lua \
    luarocks
RUN luarocks install busted
