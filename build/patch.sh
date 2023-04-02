#!/bin/sh

exec $(dirname "$0")/chrome_original --no-sandbox "$@"
