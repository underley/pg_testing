#!/bin/bash

source config.sh

mkdir -p ${DATADIR}
${PGPREFIX}/bin/initdb -U postgres -D ${DATADIR} -E utf8 --locale=pl_PL.utf8

for cfg in postgresql.conf pg_hba.conf pg_ident.conf
do
  rm -vf ${DATADIR}/${cfg}
  cp -va ${CONFDIR}/${cfg} ${DATADIR}/${cfg}
done
