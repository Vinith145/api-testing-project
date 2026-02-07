\# Linux Troubleshooting Checklist



\## 1. Disk Issues

\- df -h

\- du -sh /\*

\- lsblk

\- mount



\## 2. Memory Issues

\- free -h

\- top

\- htop

\- vmstat



\## 3. CPU Issues

\- top

\- uptime

\- mpstat



\## 4. Process Issues

\- ps aux

\- kill -9 <pid>

\- pgrep <process>



\## 5. Service Issues

\- systemctl status <service>

\- systemctl restart <service>

\- systemctl enable <service>



\## 6. Logs

\- journalctl -xe

\- tail -f /var/log/syslog

\- tail -f /var/log/messages



\## 7. Network Issues

\- ip a

\- ping google.com

\- netstat -tulpn

\- ss -tulpn

\- curl -I https://google.com



\## 8. File Search

\- find / -name filename

\- locate filename

\- grep -R "text" /path



\## 9. Permissions

\- ls -l

\- chmod 755 file

\- chown user:user file



\## 10. Cron Jobs

\- crontab -l

\- crontab -e

\- systemctl status cron



