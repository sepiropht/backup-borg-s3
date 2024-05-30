#!/bin/bash

# Borg backup script

REPOSITORY="borg_repo_name"
BOG_S3_BACKUP_BUCKET="s3_bucket_name"
DOWNLOAD_FOLDER="DOWNLOAD_FOLDER"


# download s3 bucket to local dir
aws s3 sync ${REPOSITORY} s3://${BORG_S3_BACKUP_BUCKET} ${DOWNLOAD_FOLDER}
