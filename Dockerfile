FROM pinidh/baseimage-debian-testing:1.0.0

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends \
  golang \
  git

RUN GO111MODULE=on go get github.com/pini-gh/blogspam-api

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Our scripts
COPY run-blogspam.sh /etc/service/blogspam/run

EXPOSE 9999
