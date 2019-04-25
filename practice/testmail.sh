#!/bin/sh

(echo To: amaranna@in.ibm.com
  echo From: server@$HOSTNAME.com
  echo "Content-Type: text/html; "
  echo Subject: Test mail Subject
  echo
  cat email.html ) | sendmail -t
