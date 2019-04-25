
 #!/bin/bash
    
    TEN_DAYS="3793274 230667"
    
    TEST1=`echo $TEN_DAYS | awk '{print $1}'`
    echo $TEST1
    
    TEST2=`echo $TEN_DAYS | awk '{print $2}'`
    echo $TEST2
    
    mailx -s "Subject of the message" -r FromNonProductionServer@$HOSTNAME.com amaranna@in.ibm.com <<EOF
    
    Error  Percentage: `(echo "100*$TEST2/$TEST1" | bc -l)`
    
    EOF
