#!/bin/bash

set_username (){
   printf "Enter a username:\n"
   read USERNAME

   if getent passwd "$USERNAME"; then
     printf "Username is not available, please choose a different username.\n"
     set_username
   fi
}

set_group(){
   printf "Enter a group:\n"
   read GROUP

   if getent group "$Group"; then
     printf "This name is taken, please choose a different one for your group"
     set_group
   fi
}

set_username
set_group
sudo groupadd $GROUP; printf "$GROUP group created.\n"
sudo useradd -m -s /bin/bash -g $GROUP $USERNAME; printf "$USERNAME user has been added.\n"
