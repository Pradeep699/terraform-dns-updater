# Terraform Coding Exercise
#Installation:

Terraform

sudo yum install wget unzip
sudo wget https://releases.hashicorp.com/terraform/1.1.4/terraform_1.1.4_linux_amd64.zip

Docker

docker run --name bind -p 53:53/udp -h ns.myhostname.tld busybox42/bind-docker-centos

git

yum install git


#Description:

This module describes updating DNS server from json files as records .
Each json file is considered as single record in this scenario

Using default function files are processed as records  

This module requires the dns provider, which must be configured for dynamic updates

zone is the name of the zone where the given records are to be managed.
