FROM gogs/gogs

MAINTAINER EgoFelix <docker@egofelix.de>

# Add .ssh/proxy_keys to AuthorizedKeysFile
RUN sed -i 's/^AuthorizedKeysFile.*/AuthorizedKeysFile .ssh\/authorized_keys .ssh\/proxy_keys/g' /etc/ssh/sshd_config
