#!/bin/bash

id=$(id -u)

validate(){
 if [ $? -ne 0 ] 
    then 
        echo " error :: installing my sql failed"
        exit 1
    else 
        echo " installing my sql success"
 fi
}



if [ id -ne 0 ]
then 
  echo " error : please run this script root user "
  exit 1
 else 
   echo " root user" 
fi

yum install mysql -y 

validate

yum install git -y 

validate