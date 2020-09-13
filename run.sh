#!/usr/bin/env bash
trap 'exit 0' SIGTERM

# while true; do foo; sleep 2; done
while true
do
    date
    echo "[-] Starting mindmap."
    sleep 2
    npm run start:prod
done
date
echo "[-] Stopping mindmap."