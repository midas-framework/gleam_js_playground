FROM rust:1.51.0

ENV SHA="e412657ecf807a114f50e216a2e7734838c7f4d8"
RUN set -xe \
        && curl -fSL -o gleam-src.tar.gz "https://github.com/midas-framework/gleam/archive/${SHA}.tar.gz" \
        && mkdir -p /usr/src/gleam-src \
        && tar -xzf gleam-src.tar.gz -C /usr/src/gleam-src --strip-components=1 \
        && rm gleam-src.tar.gz \
        && cd /usr/src/gleam-src \
        && make install \
        && rm -rf /usr/src/gleam-src 

WORKDIR /opt/app
RUN cargo install watchexec
