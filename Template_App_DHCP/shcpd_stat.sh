FILENAME=$(find /var/log/ -mmin -10 -type f -name "dhcp*")
tail -n 150000 $FILENAME>/tmp/stat.log
TIME=$(date -d '5 min ago' '+%b %e %H:%M');
TIME_NOW=$(date '+%b %e %H:%M');
awk "/$TIME/,/$TIME_NOW/" /tmp/stat.log > /tmp/stat.st

DHCPDISCOVER=$(grep DHCPDISCOVER /tmp/stat.st|wc -l)
DHCPREQUEST=$(grep DHCPREQUEST /tmp/stat.st|wc -l)
DHCPACK=$(grep DHCPACK /tmp/stat.st|wc -l)
DHCPOFFER=$(grep DHCPOFFER /tmp/stat.st|wc -l)

DHCPINFORM=$(grep DHCPINFORM /tmp/stat.st|wc -l)
DHCPNAK=$(grep DHCPNAK /tmp/stat.st|wc -l)
DHCPDECLINE=$(grep DHCPDECLINE /tmp/stat.st|wc -l)
DHCPRELEASE=$(grep DHCPRELEASE /tmp/stat.st|wc -l)

echo DHCPDISCOVER:$DHCPDISCOVER 
echo DHCPREQUEST:$DHCPREQUEST 
echo DHCPACK:$DHCPACK 
echo DHCPOFFER:$DHCPOFFER 
echo DHCPINFORM:$DHCPINFORM 
echo DHCPNAK:$DHCPNAK 
echo DHCPDECLINE:$DHCPDECLINE 
echo DHCPRELEASE:$DHCPRELEASE

