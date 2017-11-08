#!/bin/bash

stop_program ()
{
  pidfile="$1"
  pid=$(cat $pidfile)

  echo "Stopping Process - $pidfile. PID=$pid"
  kill -9 $pid
  rm $pidfile
}

stop_program pids/bws.pid
stop_program pids/fiatrateservice.pid
stop_program pids/bcmonitor.pid
stop_program pids/pushnotificationsservice.pid
stop_program pids/messagebroker.pid
stop_program pids/locker.pid
