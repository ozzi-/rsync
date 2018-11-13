#!/bin/bash
mailcontent=$(cat)
if [ ${#mailcontent} -ge 5 ]; then
	echo "To: recipient@email.ch" > email.txt
	echo "From: backup@email.ch" >> email.txt
	echo "Subject: Backup error" >> email.txt
	echo "" >> email.txt
	echo $mailcontent >> email.txt
	cat email.txt | sendmail -t
	echo "sent email"
fi