#!/bin/ash

postconf maillog_file=/dev/stdout

/usr/sbin/postfix start-fg