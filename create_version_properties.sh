#!/bin/bash

# the output filename
OUTPUT_FILE=$WORKSPACE+"version.properties"

OPENCMS_VERSION_NUMBER="9.5.x"
OPENCMS_BUILD_NUMBER=$OPENCMS_BUILD_NUMBER
OPENCMS_BUILD_DATE=$(date +"%Y-%m-%d %H:%M")
OPENCMS_GIT_ID=$GIT_COMMIT
OPENCMS_GIT_BRANCH=$GIT_BRANCH

echo "# OpenCms version information" > $OUTPUT_FILE
echo "# " >> $OUTPUT_FILE
echo "# Automatically generated by Jenkins build" >> $OUTPUT_FILE
echo "# " >> $OUTPUT_FILE
echo "version.number=$OPENCMS_VERSION_NUMBER" >> $OUTPUT_FILE
echo "version.buildnumber=$OPENCMS_BUILD_NUMBER" >> $OUTPUT_FILE
echo "version.builddate=$OPENCMS_BUILD_DATE" >> $OUTPUT_FILE
echo "version.gitid=$OPENCMS_GIT_ID" >> $OUTPUT_FILE
echo "version.gitbranch=$OPENCMS_GIT_BRANCH" >> $OUTPUT_FILE

