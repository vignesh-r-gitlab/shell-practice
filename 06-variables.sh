#!/bin/bash

starttime=$(date +%s)
echo "script start time: $starttime"

endtime=$(date +%s)
echo "script end time:$endtime"

sleep 10

totaltime=$($endtime-$starttime)

echo "time took to execute the script:$totaltime"