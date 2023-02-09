FROM rust

# cache cargo index
RUN cargo search

RUN rustup component add rustfmt clippy llvm-tools && \
    cargo install cargo-chef cargo-audit cargo-deny && \
    rm -rf /usr/local/cargo/registry/cache && rm -rf /usr/local/cargo/registry/src
