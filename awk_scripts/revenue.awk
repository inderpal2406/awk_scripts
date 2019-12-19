# This awk script can be executed on revenue.list data file.
BEGIN { print "The script will print revenue earned in each year and total revenue of all years in the end." }
{ total=total + $2 }
{ print "Revenue earned in year " $1 " is " $2 "." }
END { print "-------------------------------------------\nTotal revenue = " total }
