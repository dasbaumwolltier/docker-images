# syntax = edrevo/dockerfile-plus

INCLUDE+ Dockerfile.common.head

COPY postfix/postfix.sh /usr/local/bin/postfix.sh
RUN apk add --no-cache postfix postfix-ldap postfix-mysql postfix-pcre postfix-sqlite postfix-pgsql postfix-sqlite ca-certificates libsasl &&\
    chmod 0755 /usr/local/bin/postfix.sh

VOLUME /etc/postfix/sql-maps

CMD ["/usr/local/bin/postfix.sh"]
INCLUDE+ Dockerfile.common.tail