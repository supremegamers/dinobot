FROM axonasif/workspace-rust

USER root

# Install meilisearch
RUN target=/usr/bin/meilisearch \
  && curl -o "${target}" \
  -L https://github.com/meilisearch/meilisearch/releases/download/v1.1.0/meilisearch-linux-amd64 \
  && chmod +x "${target}"

USER gitpod

ENV RUST_VERSION="nightly-2023-10-12"
RUN rustup default "$RUST_VERSION"
