#!/bin/sh
exec /root/go/bin/blogspam-api -host 0.0.0.0 -port 9999 -redis blogspam_redis:6379
