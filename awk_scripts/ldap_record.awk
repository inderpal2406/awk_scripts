# This awk script can be executed on ldap_record.list data file.
BEGIN { FS=":" ; ORS="\n\n" }
{ print "dn: uid=" $1 ", dc=example, dc=com\ncn: " $2 " " $3 "\nsn: " $3 "\ntelephoneNumber: " $4 "\n\n" }
