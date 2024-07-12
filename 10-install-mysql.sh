#!/bin/bash

id=$(id -u)

if [ id -ne 0 ]

then 
  echo " error : please run this script root user "

 else 
   echo " root user" 
fi

yum install mysql -y