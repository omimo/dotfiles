#!/bin/bash

TARGET_DIR=$1
DATE_STAMP=`date +%Y%m%d_%H%M`

echo "Tarifying the folders in `pwd` to $TARGET_DIR"
echo "Time stamp: $DATE_STAMP"
echo "-------------------------"

find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "tar -cf $TARGET_DIR/'{}'_$DATE_STAMP.tar '{}'" \;