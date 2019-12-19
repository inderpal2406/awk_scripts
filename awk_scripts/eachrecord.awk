# This awk script can be executed on users.list data file.
BEGIN { FS="," ; OFS = ":" ; ORS = "\n-->\n" }
{ print "This is record no = " NR "\n" $1,$3 }
END { print "Total no.of records processed = " NR }
