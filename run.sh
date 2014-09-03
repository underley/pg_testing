#!/bin/bash

source config.sh

${PGPREFIX}/bin/postgres -D /tmp/9.3/testing
