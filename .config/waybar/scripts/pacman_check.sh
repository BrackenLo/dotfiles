#!/bin/sh

if [ `checkupdates | wc -l` -ne 0 ]; then
  exit 0
fi
exit 1
