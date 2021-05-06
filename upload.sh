#!/bin/bash
alias uuid="python -c 'import sys,uuid; sys.stdout.write(uuid.uuid4().hex)' | pbcopy && pbpaste && echo"
CAPTURE_UUID_VALUE=`uuid`
REGISTRATION_UUID_VALUE=`uuid`
sed "s/CAPTURE_UUID_VALUE/$CAPTURE_UUID_VALUE/" template/captures.json > prepared/captures.json
sed "s/REGISTRATION_UUID_VALUE/$REGISTRATION_UUID_VALUE/" template/registrations.json > prepared/registrations.json
