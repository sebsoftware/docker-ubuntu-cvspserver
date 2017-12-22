#!/bin/sh

CVSUSER=$1

echo ${CVSUSER} >>${CVSROOT}/CVSROOT/writers
