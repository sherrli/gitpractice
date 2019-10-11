#!/bin/bash
INI_FILE=conf.ini

function includeINI ()
{
  if [ ! -f "$INI_FILE" ] ; then
    echo "conf.ini missing .. setting defaults .. "
    WAIT=30
    WAIT_SCALE='m'
  else
    source $INI_FILE
  fi
}

# Written by Chetna
function parseWait ()
{
  if [ "$WAIT_SCALE" = 'd' ] ; then
      sleep_time="$(($WAIT * 24 * 60 * 60))" # number of days * 86400 seconds
  elif [ "$WAIT_SCALE" = 'hr' ] ; then
      sleep_time="$(($WAIT * 60 * 60))" # number of hours * 3600 seconds
  elif [ "$WAIT_SCALE" = 'm' ] ; then
      sleep_time="$(($WAIT * 60))" # number of minutes * 60 seconds
  elif [ "$WAIT_SCALE" = 's' ] ; then
      sleep_time="$WAIT" # number of seconds
  fi
}

while :
do
  includeINI
  echo "read INI"
  parseWait
  echo "sleeping $sleep_time"
  sleep $sleep_time
done

exit 0
