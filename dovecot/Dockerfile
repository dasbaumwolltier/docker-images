# syntax = edrevo/dockerfile-plus

INCLUDE+ Dockerfile.common.head

RUN apk add --no-cache dovecot dovecot-lmtpd dovecot-pgsql dovecot-pop3d dovecot-sql ca-certificates

CMD ["/usr/sbin/dovecot", "-F"]
INCLUDE+ Dockerfile.common.tail