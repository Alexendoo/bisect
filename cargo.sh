#!/usr/bin/env bash

cargo bisect-rustc --regress non-ice --preserve --access github "$@"

rm -rf target*/
