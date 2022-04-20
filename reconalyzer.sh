#!/bin/zsh

#just a bit o color
RED='\033[0;31m'
BRED='\033[1;31m'
GREEN='\033[0;32m'
BGREEN='\033[1;32m'
NC='\033[0m' # No Color

startTime=$(date +%Y%m%d%H%M%S)
jamf recon -verbose &

loopStatus=0
while [ $loopStatus = 0 ]
do
printf "%b" "${BGREEN} TIMESTAMP ${GREEN}-- $(date +%H%M%S)${NC}\n"
 sleep 1
 if ps aux | grep "jamf recon -verbose" | grep -v "grep" > /dev/null 2>&1
  then loopStatus=0
  else loopStatus=1
 fi
done

endTime=$(date +%Y%m%d%H%M%S)
totalSeconds=$(( $endTime - $startTime ))
printf "\\n%b" "${BGREEN}Total Time in seconds = $totalSeconds ${NC}\n\n"
