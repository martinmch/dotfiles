#!/usr/bin/env bash

URL="${1}"

if [ -z "${URL}" ]; then
    exit 1
fi

if grep -q "youtube.com" <<< "${URL,,}"; then
    mpv "$URL"
else
    firefox "$URL" &
fi
