# This awk script can be executed on user.list data file.
BEGIN { FS="," ; OFS=":" ; ORS="\n-->\n" }
{ print $1,$3 }
END { print "Total no. of records processed = " NR }
