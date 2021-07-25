#!/usr/bin/env bash

start=${1:-$(date -I --date="2 days ago")}

cargo bisect-rustc --regress non-ice --preserve --access github --start $start --script bash -- ./src/main.sh

rm -f *.rlib *.pdb *.exe *.o
