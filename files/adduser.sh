#!/bin/sh

CVSUSER=$1
CVSPASS=$2

echo ${CVSUSER}':'$(openssl passwd -crypt ${CVSPASS})':cvs' >>${CVSROOT}/CVSROOT/passwd
