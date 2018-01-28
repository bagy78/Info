#!/bin/bash

# Die alte IP aus dem File auslesen
IPOLD=`cat /home/pi/bbg/IP.txt`

# Mit dem Consolenbasierten Browser w3m die IP von der Seite
# monip.org auslesen und mit awk die IP ausschneiden
IP=`w3m -dump http://www.monip.org/ | awk -F': ' '/IP/ { print $2 }'`

# der Variable Datum den aktuellen Wert zuweisen
datum=`date`

# Schreibt die aktuelle IP in das File IP.txt
echo $IP > /home/pi/bbg/IP.txt

# Vergleiche alte mit neuer IP wenn ja Logeintrag und Mail wenn nein Logeintrag
if [ $IPOLD != $IP ]
then 
	echo "Neue IP in Hagenbrunn: "$IP" ermittelt um: "$datum >> /home/pi/bbg/IP.log 
	echo "Neue IP in Hagenbrunn: "$IP" ermittelt um: "$datum | mail -s "Hagenbrunn neue IP" bagy@gmx.net
else
	echo "IP "$IP" ermittelt um "$datum >> /home/pi/bbg/IP.log 
fi
