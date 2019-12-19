# This awk script is called in top_three.sh bash script and operates on temp.list data file genarated during runtime of top_three.sh
BEGIN { print "Below are the top three consumers of / directory,\n" }
{ print $2 " consumes " $1 " kilobytes of diskspace in / directory.\n" }
