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


yum install git -y

if [ $? -ne 0 ] 
then 
  echo " error :: installing git failed"
 exit 1
else 
  echo " installing git success"
fi
