# Cheap Backup Solution with Amazon S3 Deep Archive and borg-backup

## Introduction

This README provides instructions on how to set up a cost-effective backup solution using Amazon S3 Deep Archive. Amazon S3 Deep Archive is an extremely low-cost storage option designed for long-term data retention and archiving.



## Getting Started

You need aws-cli and borg-backup installed on system

Follow these steps to set up your backup solution with Amazon S3 Deep Archive:

1. **Sign up for AWS**: If you haven't already, sign up for an AWS account at [aws.amazon.com](https://aws.amazon.com/).

2. **Create an S3 Bucket**: Log in to the AWS Management Console, navigate to the S3 service, and create a new S3 bucket to store your backups.

You also need credential of your aws account, that how the cli script can write in your bucket


```java
// .aws/credential
[default]
aws_access_key_id=
aws_secret_access_key=
```

```java
//.aws/config
[profile chess]
region=

[default]
region=
```

# S3 glacier deep archive price

Use this storage as cold storage. Normally you access this data for ermegency only.
Personnaly i use it as cold storage for my personnal data. It's end-to-end encrypted on my client
with borg-backup so i don't bother for my privacy.
It's extremely cheap for this use case. 
Only the retrieval can be expensive, but you're not suppose to do this often.



## S3 Glacier Deep Archive (Deep Archive)
- Storage Cost: Approximately $0.99 USD per month.
- Data Retrieval Cost:
  - Standard Retrieval: Approximately $20.00 USD.
  - Bulk Retrieval: Approximately $2.50 USD.
- Request Cost:
  - GET, SELECT, and LIST: Approximately $0.50 USD per thousand requests.

## Cost Calculation for 1000 GB
### Deep Archive
- Storage: $0.99 USD per month
- Standard Retrieval: $20.00 USD
- Bulk Retrieval: $2.50 USD

## Summary of Costs for 1 Month (Storage + 1 Retrieval)
### Deep Archive
- Storage: $0.99 USD
- Standard Retrieval: $20.00 USD
- Total: $20.99 USD

## Performance Details
### S3 Glacier Deep Archive
- Standard Retrieval: 12 hours.
- Bulk Retrieval: 48 hours.



