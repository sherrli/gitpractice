#!/bin/bash

# This is a test script to save output variables inside a heredoc.

scp -r /tmp/heredoctest ubuntu@perf-dataplane1:/tmp

# can do 'EOF' too
ssh perf-dataplane1 << \EOF # | egrep "PASSED|FAILED"
  if [ -f /tmp/heredoctest/testing ]; then
    echo "PASSED 1"
    isOk=`grep "ok" /tmp/heredoctest/testing`
    echo -e "bla bla ${isOk}"
    echo "PASSED 2: ${isOk}"
  else
    echo "FAILED 1"
  fi
EOF
