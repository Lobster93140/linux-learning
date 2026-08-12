#!/bin/bash

show_title() {
    echo "=============================="
    echo "   Linux System Health Check v1"
    echo "=============================="
}


show_user() {
user=$(whoami)
echo "Current user: $user"
}

show_date() {
date=$(date)
echo "Current date: $date"
}

show_disk() {
echo
echo "Disk usage:"
df -h
}

show_uptime () {
echo
echo "System uptime: "
uptime
}
show_memory () {
echo
echo "Memory usage: "
free -h
}

show_ip () {
echo 
echo "IP adress is:"
ip addr | grep inet | grep -v inet6 | grep -v 127.0.0.1 | awk '{print $2}' | cut -d/ -f1
}

show_title
show_user
show_date
show_disk
show_uptime
show_memory
show_ip

echo
echo "Health check completed successfully."
