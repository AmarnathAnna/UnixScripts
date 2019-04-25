#!/bin/bash

TO_ADDRESS="amaranna@in.ibm.com"
FROM_ADDRESS="$HOSTNAME"
SUBJECT="linux mail send attachment example"
BODY_FILE="Sending mail from the Linux server"
ATTACHMENT_FILE="script_examples.zip"
CC_LIST=""

#uuencode ${ATTACHMENT_FILE} | mail -s ${SUBJECT} -c ${CC_LIST} ${TO_ADDRESS} -- -r ${FROM_ADDRESS} < ${BODY_FILE}
uuencode $ATTACHMENT_FILE | mail -s "$SUBJECT" "$TO_ADDRESS" < $BODY_FILE
