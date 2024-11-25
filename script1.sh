#!/bin/bash
DISK_USAGE=$(df -h / | tail -1 | awk '{print $5}' | cut -d'%' -f1) #he final disk usage value is stored in the variable DISK_USAGE
if [ "$DISK_USAGE" -gt 80 ]; then
    echo "WARNING: Disk usage is above 80% ($DISK_USAGE%)"
    exit 1
else
    echo "Disk usage is normal: $DISK_USAGE%"
fi
#The script monitors disk space and warns if usage exceeds 80%, helping prevent storage issues.
