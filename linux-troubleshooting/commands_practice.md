# Linux Commands Practice

## grep - Search for ERROR logs
Command:
grep ERROR app.log

Output:
ERROR Database connection failed
ERROR Timeout occurred


## awk - Print first three columns
Command:
awk '{print $1, $2, $3}' app.log

Output:
INFO Server started
INFO User login success
ERROR Database connection failed
WARN Disk usage high
INFO Request completed
ERROR Timeout occurred


## sed - Replace ERROR with CRITICAL
Command:
sed 's/ERROR/CRITICAL/g' app.log

Output:
CRITICAL Database connection failed
CRITICAL Timeout occurred

