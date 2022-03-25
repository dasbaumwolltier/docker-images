# syntax = edrevo/dockerfile-plus

INCLUDE+ Dockerfile.common.head

RUN apk add --no-cache dovecot dovecot-lmtpd dovecot-pgsql dovecot-pop3d dovecot-sql ca-certificates

CMD ["/usr/sbin/dovecot", "-F", "-o", "log_path=/proc/1/fd/2", "-o", "info_log_path=/proc/1/fd/1"]
INCLUDE+ Dockerfile.common.tail