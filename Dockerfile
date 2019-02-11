FROM debian:stable-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    git-crypt \
 && rm -rf /var/lib/apt/lists/*

ADD script.sh /bin/
RUN chmod +x /bin/script.sh
CMD ["/bin/script.sh"]

