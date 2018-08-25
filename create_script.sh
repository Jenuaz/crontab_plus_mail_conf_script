echo "TAG=/etc/crontab \n BUP=/etc/.crontab \n\
if [ ! -e \$BUP ]; then \n\
	sudo cp \$TAG \$BUP \n\
	exit 0 \n\
fi \n\
MD5M='md5sum \$TAG | awk \'{print \$1}\'' \n\
MD5B='md5sum \$BUP | awk \'{print \$1}\'' \n\
if ! cmp \"\$MD5M\" \"\$MD5B\"; then \n\
	echo "Crontab was modified" | mail -s "Report" jenuaz@gmail.com \n\
fi"
