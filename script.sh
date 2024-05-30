#!/bin/bash

# Borg backup script

REPOSITORY="borg_repo_name"
SOURCE="source_dir"
BOG_S3_BACKUP_BUCKET="s3_bucket_name"


export BORG_PASSPHRASE=''

# Backup to borg 
borg create -v --stats $REPOSITORY::$(date +%Y-%m-%d-%h) $SOURCE



# sync to s3 glacier deep archive
aws s3 sync ${REPOSITORY} s3://${BORG_S3_BACKUP_BUCKET} --storage-class DEEP_ARCHIVE --delete
