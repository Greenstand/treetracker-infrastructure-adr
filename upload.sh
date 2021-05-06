#!/bin/bash
alias uuid="python -c 'import sys,uuid; sys.stdout.write(uuid.uuid4().hex)' | pbcopy && pbpaste && echo"
CAPTURE_UUID_VALUE=`uuid`
REGISTRATION_UUID_VALUE=`uuid`
sed "s/CAPTURE_UUID_VALUE/$CAPTURE_UUID_VALUE/" template/captures.json > prepared/captures.json
sed "s/REGISTRATION_UUID_VALUE/$REGISTRATION_UUID_VALUE/" template/registrations.json > prepared/registrations.json

#upload it
aws s3 cp --profile treetracker-test-env prepared/captures.json s3://treetracker-test-batch-uploads
aws s3 cp --profile treetracker-test-env prepared/registrations.json s3://treetracker-test-batch-uploads

echo "capture uuid: $CAPTURE_UUID_VALUE"
echo "registration uuid: $REGISTRATION_UUID_VALUE"
