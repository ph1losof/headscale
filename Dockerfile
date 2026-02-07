FROM headscale/headscale:latest-debug
RUN ["/busybox/sh", "-c", "mkdir -p /etc/headscale && touch /etc/headscale/config.yaml"]
CMD ["headscale", "serve"]
