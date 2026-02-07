#!/bin/bash
echo "==== Disk Usage ===="
df -h

echo ""
echo "==== Largest Directories ===="
du -sh /* 2>/dev/null | sort -hr | head -10

