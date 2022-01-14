
# bash script copy new files to separate folder

## argument examples

/home/jte/sandbox/cpscript/org/
/home/jte/sandbox/cpscript/cp/
pointcloud_right.txt

```
./create_cp.sh /home/jte/sandbox/cpscript/org/ /home/jte/sandbox/cpscript/cp/ pointcloud_right.txt
```

## cron
```
crontab -e
```
add this line to the end of the crontab file

*/1 * * * * /home/jte/sandbox/cpscript/create_cp.sh /home/jte/sandbox/cpscript/org/ /home/jte/sandbox/cpscript/cp/ pointcloud_right.txt