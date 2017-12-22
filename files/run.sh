#!/bin/bash
echo $CVSROOT

if [ ! -d "$CVSROOT/CVSROOT" ]
then
	DIR=$(dirname "${CVSROOT}")
	mkdir -p "${DIR}"
	cvs -d "${CVSROOT}" init
	echo nobody: > ${CVSROOT}/CVSROOT/passwd
	touch ${CVSROOT}/CVSROOT/writers
	chown -R cvs.cvs "${CVSROOT}"
        rm /etc/xinetd.d/cvspserver
fi 

if [ ! -f /etc/xinetd.d/cvspserver ]
then
	INITSCRIPT=$(</root/cvspserver)
	echo "${INITSCRIPT/\#\#CVSROOT\#\#/$CVSROOT}" >/etc/xinetd.d/cvspserver
fi

echo "Starting XINETD servce"
service xinetd start

# We need a running process for docker
trap 'service xinetd stop; sleep 2;  exit 0' SIGTERM
while true; do :; done
