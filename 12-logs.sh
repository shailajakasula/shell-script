#!/bin/bash

id=$(id -u)
 timestamp=$(date +%F-%H-%M_%S)

 LOGFILE="/temp/$0-$timestamp.log"
 
validate(){
 if [ $? -ne 0 ] 
    then 
        echo " error : $2... failed"
        exit 1
    else 
        echo " $2.... success"
 fi
}



if [ id -ne 0 ]
then 
  echo " error : please run this script root user "
  exit 1
 else 
   echo " root user" 
fi

yum install mysql -y &>> $LOGFILE

validate $? "installing mysql"

yum install git -y &>> $LOGFILE

validate $? "installing git"