#!/usr/bin/env bash

start=${1:-$(date -I --date="2 days ago")}

cargo bisect-rustc --regress non-ice --preserve --access github --start $start --script bash -- ./src/main.sh

rm -rf target*/ *.rlib *.rmeta *.d *.o *.pdb *.exe
