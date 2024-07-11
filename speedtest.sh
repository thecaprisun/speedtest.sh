#!/bin/bash

url='https://raw.githubusercontent.com/thecaprisun/speedtest.sh/main/downloadable-file'

if avg_down_speed_bytes=$(curl -qfsS -w '%{speed_download}' -o /dev/null --url "$url")
then
  echo >> /dev/null
fi

avg_down_speed_mb=$(awk "BEGIN {print $avg_down_speed_bytes / 104857}")

echo Your download speed is about $avg_down_speed_mb MB