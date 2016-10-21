#!/bin/bash
cd /home/isucon/isucon5-final/bench
export ISUCON_BENCH_DATADIR=/home/isucon/isucon5-final/bench/json
cat ../data/source.json | jq ".[$(( $RANDOM % 20 ))]" | gradle run -Pargs="net.isucon.isucon5f.bench.Full $1 -p 80"
