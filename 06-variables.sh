#!/bin/bash

starttime=$(date +%s)
echo "script start time: $starttime"

sleep 10

endtime=$(date +%s)
echo "script end time:$endtime"

totaltime=$($endtime - $starttime)

echo "time took to execute the script:$totaltime"