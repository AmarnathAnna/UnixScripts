#!/bin/bash
Recipient="amaranna@in.ibm.com"
Subject="Script examples1"
Message="The attached zip file has script examples"
#`mailx -s $Subject $Recipient <<< $Message`
mailx -a "script_examples.zip" -s "$Subject" $Recipient <<< $Message
echo "Mail subjected: $Subject sent to $Recipient"
