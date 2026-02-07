FROM headscale/headscale:latest-debug
RUN mkdir -p /etc/headscale && touch /etc/headscale/config.yaml
CMD ["headscale", "serve"]
