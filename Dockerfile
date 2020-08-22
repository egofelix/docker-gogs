FROM gogs/gogs:0.12.0

MAINTAINER EgoFelix <docker@egofelix.de>

# Add .ssh/proxy_keys to AuthorizedKeysFile
RUN sed -i 's/^AuthorizedKeysFile.*/AuthorizedKeysFile .ssh\/authorized_keys .ssh\/proxy_keys/g' /app/gogs/docker/sshd_config
