grep cwd /var/log/exim_mainlog  | grep $(date +%Y-%m-%d) | grep sendmail | grep public_html | awk '{print $3}' | sort | uniq -c | sort -n

echo " "
echo " "
sleep 5
exim -bp
