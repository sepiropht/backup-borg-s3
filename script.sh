#!/bin/bash

# Borg backup script

REPOSITORY="local_path..."
SOURCE="dir of the sources file"
BOG_S3_BACKUP_BUCKET="name of bucket in amazon s3"


export BORG_PASSPHRASE=''

# Backup to borg 
borg create -v --stats $REPOSITORY::$(date +%Y-%m-%d-%h) $SOURCE



# sync to s3 glacier deep archive
aws s3 sync ${REPOSITORY} s3://${BORG_S3_BACKUP_BUCKET} --storage-class DEEP_ARCHIVE --delete
