#!/bin/bash
echo "==== Memory ===="
free -h

echo ""
echo "==== CPU Load ===="
uptime

echo ""
echo "==== Top Processes ===="
ps aux --sort=-%mem | head -10

