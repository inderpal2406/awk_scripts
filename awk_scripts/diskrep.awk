# Processes df -h output supplied via a |
# Usage: df -h | awk -f diskrep.awk

BEGIN {print "*****WARNING WARNING WARNING*****"}
/[8|9][0-9]%/ {print $1 "\t: " $5 " full!"}
END {print "*****Give money to disks*****"}
