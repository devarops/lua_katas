FROM ubuntu:22.04
WORKDIR /workdir
COPY . /workdir
RUN apt update && apt install --yes \
    lua5.4 \
    luarocks
RUN luarocks install busted
