#!/bin/bash

id=$(id -u)

if [ id -ne 0 ]

then 
  echo " error : please run this script root user "
  
 else 
   echo " root user" 
fi

yum install mysql -y

if [ $? -ne 0 ] 
then 
  echo " error :: installing my sql failed"
 exit 1
else 
  echo " installing my sql success"
fi
