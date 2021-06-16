FROM rust:1.52.1

ENV SHA="a4b1d7431d059eb800c1af9cfb3aec1efece1753"
RUN set -xe \
        && curl -fSL -o gleam-src.tar.gz "https://github.com/gleam-lang/gleam/archive/${SHA}.tar.gz" \
        && mkdir -p /usr/src/gleam-src \
        && tar -xzf gleam-src.tar.gz -C /usr/src/gleam-src --strip-components=1 \
        && rm gleam-src.tar.gz \
        && cd /usr/src/gleam-src \
        && make install \
        && rm -rf /usr/src/gleam-src 

WORKDIR /opt/app
RUN cargo install watchexec-cli
