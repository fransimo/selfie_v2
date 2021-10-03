#!/bin/bash

export command="sudo poweroff"

if [ "$1" != "" ] ; then
  command=$*
  echo $command
fi

# 1
ssh pi@selfie-b827eb81d4a2.local "$command"

# 2
ssh pi@selfie-b827eb45cb8e.local "$command"

# 3
ssh pi@selfie-b827eb8fa9fd.local "$command"

# 4
ssh pi@selfie-b827eb664d68.local "$command"

# 5
ssh pi@selfie-b827eb7fe07d.local "$command"

# 0
ssh pi@selfie-e45f015bee2e.local "$command"
