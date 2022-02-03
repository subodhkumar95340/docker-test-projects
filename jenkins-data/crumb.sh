#!/bin/bash
crumb=$(curl -u "subodh:subodh" -s 'http://3.111.57.55:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
curl -u "subodh:subodh" -H "$crumb" -X POST http://3.111.57.55:8080/job/zero%20to%20Adv/job/remote-task/build?delay=0sec 
#curl -u "jenkins:1234" -H "$crumb" -X POST  http://jenkins.local:8080/job/backup-to-aws/buildWithParameters?MYSQL_HOST=db_host&DATABASE_NAME=testdb&AWS_BUCKET_NAME=jenkins-mysql-backup
