#!/bin/bash
./backup.sh 2>&1 1>/dev/null  | ./send.sh