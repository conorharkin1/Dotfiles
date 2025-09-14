#!/bin/bash

# Get memory usage using free
mem_usage=$(free | awk '/Mem:/ {printf("%.0f", $3/$2 * 100)}')

# Echo in requested format
echo "${mem_usage}%"