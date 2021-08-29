#!/usr/bin/env bash

start=$(date -I --date="${1:-2 days ago}")

cargo bisect-rustc --regress non-ice --preserve --access github --start $start --script bash -- ./src/main.sh

rm -rf target*/ *.rlib *.rmeta *.d *.o *.pdb *.exe
