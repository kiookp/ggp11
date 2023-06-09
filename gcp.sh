#!/bin/bash

# Modify the /etc/ssh/sshd_config file
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config

# Restart the ssh service
service ssh restart

# Change the root password
echo "bB031500" | passwd --stdin root
