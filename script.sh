#!/usr/bin/env bash

start="$(date -I --date="${1:-2 days ago}")"

cargo bisect-rustc --regress non-ice --preserve --access github --start $start --script bash -- -c 'cd $(mktemp -dp .); ../src/main.sh'

rm -rf tmp.*/
