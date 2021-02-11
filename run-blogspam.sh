#!/bin/sh
REVERSE_PROXY=${REVERSE_PROXY:-false}
exec /root/go/bin/blogspam-api -host=0.0.0.0 -port=9999 -redis=blogspam_redis:6379 -proxy="${REVERSE_PROXY}"
