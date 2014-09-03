#!/bin/bash

source config.sh

kill -TERM $(cat /tmp/postgresql-testing-5499.pid)
rm -rf ${DATADIR}
