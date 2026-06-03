#!/bin/bash

LOG_FILE="sample_syslog.log"

echo "===== Linux Log Analysis Report ====="
echo ""

echo ">>> Failed Login Attempts:"
grep -i "failed" "$LOG_FILE" | wc -l

echo ""
echo ">>> Disk / I/O Errors:"
grep -i "error\|disk" "$LOG_FILE"

echo ""
echo ">>> Service Failures:"
grep -i "failed to start\|stopped" "$LOG_FILE"

echo ""
echo "===== End of Report ====="
