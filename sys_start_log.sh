#!/bin/bash

now=$(date)
logged_in_users=$(who)
system_uptime=$(uptime)

sys_log()
{
  echo "Hello!"
  echo "Today's date and time is $now"
  echo ""
  echo "The following users are logged into the system:"
  echo "$logged_in_users"
  echo ""
  echo "System uptime:"
  echo "$system_uptime"
}


$(sys_log>sys_start.log)

exit 0
