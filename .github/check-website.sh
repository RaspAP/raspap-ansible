#!/bin/bash

curl -s --fail http://127.0.0.1
RC=$?
if [ $RC -eq 22 ]; then     # 22 is a code 400 or above
    echo "Website is up. Got code $RC."
    exit 0
fi
echo "Website is not up. Got code $RC."
exit 1
