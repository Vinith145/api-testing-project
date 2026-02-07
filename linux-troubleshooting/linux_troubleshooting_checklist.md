# Linux Troubleshooting Checklist

## Disk Issues
df -h
du -sh *

## Memory Issues
free -m
top

## CPU Issues
top
htop

## Process Issues
ps aux | grep process_name
kill -9 <pid>

## Service Issues
systemctl status service_name
systemctl restart service_name

## Logs
journalctl -xe
journalctl -u service_name

## Network Issues
netstat -tulnp
ss -tulnp
ping google.com
curl http://localhost

