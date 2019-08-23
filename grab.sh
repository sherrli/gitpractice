curl http://localhost:8443/server-status?notable -o /tmp/curlout.log
 sed -e 's/<\/[a-zA-Z0-9]*>/\n/g
 s/>/ = /g
 s/<//g
 s/colspan="//g
 s/"//g;s/dt = //g
 s/th //g
 s/ =//g' /tmp/curlout.log| egrep "CPU|requests|Connections|Threads"

# save output into curlout.log
 # search for text, replace with text

# sed 's/packets/jackets/g' file.txt
# finds packets and replaces with jackets in file.txt, and prints it to output
# it doesn't change the file

# to change a file on ubuntu: add -i
# to change on mac: add -i.bak (to create a backup)

# use variable, avoid arrays
# x="s"; sed -i.bak "s/$x/y/g" you must use double quotes when accessing variables
# s\ and /g are search and replace tags, search, global

# \ is an escape char
