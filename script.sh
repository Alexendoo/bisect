#!/usr/bin/env bash

cargo bisect-rustc --without-cargo --regress non-ice --preserve --access github --script bash "$@" -- -c 'cd $(mktemp -dp .); ../src/main.sh'

rm -rf tmp.*/
