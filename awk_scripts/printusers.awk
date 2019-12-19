# This awk script can be executed on /etc/passwd file.
BEGIN { FS=":" }
/\/home\// { print $1 "\t" $5 }
