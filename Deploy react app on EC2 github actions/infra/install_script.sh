#!/bin/bash
yum update -y
yum install -y nodejs npm git

# Install and start Nginx
amazon-linux-extras enable nginx1
yum install -y nginx
systemctl start nginx
systemctl enable nginx
