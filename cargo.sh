#!/usr/bin/env bash

start=$(date -I --date="2 days ago")

cargo bisect-rustc --regress non-ice --preserve --access github --start $start
