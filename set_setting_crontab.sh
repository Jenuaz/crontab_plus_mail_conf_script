sudo mv changes_comparator_crontab.sh /etc/cron.daily
echo "* * * * * sudo /bin/sh /etc/cron.daily/changes_comparator_crontab.sh" | crontab
crontab -l
