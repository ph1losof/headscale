FROM alpine AS setup
RUN mkdir -p /etc/headscale && touch /etc/headscale/config.yaml

FROM headscale/headscale:latest
COPY --from=setup /etc/headscale/config.yaml /etc/headscale/config.yaml
CMD ["headscale", "serve"]
