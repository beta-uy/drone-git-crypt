FROM alpine/git

RUN apk add --no-cache git-crypt

ADD script.sh /bin/
RUN chmod +x /bin/script.sh

ENTRYPOINT []
CMD ["/bin/script.sh"]

