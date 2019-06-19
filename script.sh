#!/bin/bash -ex

KEYPATH=HW2.pem
ARTIFACT_NAME=csye7220app-0.0.1-SNAPSHOT.war
S3_BUCKET_NAME=assignment3devops
PUBLIC_IP=54.243.12.248
mvn clean install
aws s3 cp target/$ARTIFACT_NAME s3://$S3_BUCKET_NAME
ssh -i $KEYPATH ubuntu@$PUBLIC_IP <<EOF
sudo fuser -k -n tcp 8080
rm tomcat.log
rm -rf $ARTIFACT_NAME
sudo wget https://$S3_BUCKET_NAME.s3.amazonaws.com/$ARTIFACT_NAME
java -jar $ARTIFACT_NAME &> tomcat.logs &
EOF