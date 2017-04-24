#!/usr/bin/env bash

#####################################################
##  filename:   config.sh                          ##
##  path:       ~/src/deploy/cloud/aws/            ##
##  purpose:    default ACED settings              ##
##  date:       04/22/2017                         ##
##  repo:       https://github.com/DevOpsEtc/aced  ##
##  clone path: ~/aced/app/                        ##
#####################################################

# Name & Version
aced_nm="ACED"                         # ACED name: upper-case
aced_nm_title="Aced"                   # ACED name: title-case
aced_nm_low="aced"                     # ACED name: lower-case
aced_ver="0.1.0"                       # ACED version number
aced_rel="04/22/2017"                  # ACED release date
aced_ok=true                           # ACED install status

# Localhost File Paths
aced_root="$HOME/aced"                 # ACED root
aced_app="$aced_root/app"              # ACED app path
aced_src="$aced_root/src"              # ACED data path
aced_blog="$aced_src/blog"             # ACED repo root path
aced_config="$aced_root/config"        # ACED config path
aced_keys="$aced_config/keys"          # ACED key pair path
aced_backups="$aced_config/backups"    # ACED backup path
aws_config="$HOME/.aws"                # AWS default config path
ssh_config="$HOME/.ssh"                # SSH default config path

# Localhost
ssh_key_private="aced_key"             # key pair: private
ssh_key_public="aced_key.pub"          # key pair: pubic (imported to AWS)
ssh_alias="$aced_nm_low"               # ACED SSH connection alias
localhost_ip="050.170.168.052/32"      # localhost public IP/32-bit netmask/pad
down1="$HOME/Desktop"                  # search path: downloaded EC2 keys
down2="$HOME/Downloads"                # 2nd search path: downloaded EC2 keys
root_keys="rootkey.csv"                # root access keys

# AWS Resources
ec2_vpc_id="vpc-b68048d2"              # AWS virtual private cloud ID
aws_output="json"                      # aws-cli default command output
aws_region="us-west-1"                 # aws-cli default region
aws_retry=16                           # aws-cli default retries before 255
aws_timeout=16                         # aws-cli default timeout before 255
aws_type="t2.micro"                    # aws-cli default EC2 instance type
iam_group="Aced_Admins"                # IAM user group name
iam_group_desc="ACED Administrators"   # IAM user group description
iam_policy_iam="Aced_Policy_IAM"       # IAM policy: IAM permissions
iam_policy_ec2="Aced_Policy_EC2"       # IAM policy: EC2 permissions
iam_user="Aced_User"                   # IAM username
ec2_ami_owner="099720109477"           # AMI owner: Canonical (Ubuntu)
ec2_ami_name="xenial"                  # AMI owner: Ubuntu server code name
ec2_ami_ver="16.04"                    # AMI owner: current Ubuntu LTS
ec2_id="i-004ee719f4586617c"           # EC2 instance ID
ec2_tag="$aced_nm_title"               # EC2 instance tag
ec2_ip="052.008.069.047"               # EIP public IP address
ec2_group="Aced_Sec_Group"             # EC2 security group name
ec2_group_id="sg-8faee5e8"             # EC2 security group ID
ec2_group_desc="ACED Security Group"   # EC2 security group description

# EC2 OS
os_user_def="ubuntu"                   # default Ubuntu cloud-init username
os_user="ace"                          # custom username
os_ssh_port="5280"                     # SSH listen port; only for cleaner logs
os_hostname="DevOpsEtc"                # hostname; seen in ssh prompt
os_fqdn="devopsetc.com"                # domain name
os_fqdn_dev="dev.$os_fqdn"             # staging sub-domain
os_src_blog="\$HOME/src/blog"          # root blog repo path
os_www_live="/var/www/$os_fqdn/live/html"   # root web directory (production)
os_www=dev"/var/www/$os_fqdn/dev/html"    # root web directory (development)
os_nginx_user="www-data"               # user who runs nginx & owns /var/www

# Misc
icon_pass="✔"                          # command return status: 0
icon_fail="✘"                          # command return status: 1
act_frames="◓◑◒◐"                    # activty indicator frames
act_cur_frame=0                        # activty indicator frame count
cur_hide=$(tput civis)                 # hide cursor
cur_show=$(tput cnorm)                 # unhide cursor
blue=$(tput bold && tput setaf 33)     # bold blue text
yellow=$(tput bold && tput setaf 136)  # bold yellow text
green=$(tput bold && tput setaf 64)    # bold green text
red=$(tput bold && tput setaf 160)     # bold red text
white=$(tput bold && tput setaf 255)   # bold white text
gray=$(tput setaf 8)                   # bold white text
reset=$(tput sgr0)                     # reset text attributes

# AWS URLs
aws_sec_root=https://console.aws.amazon.com/iam/home#/security_credential
aws_con=http://$aws_region.console.aws.amazon.com/ec2/v2/home?region=$aws_region
aws_cli=http://docs.aws.amazon.com/cli/latest/userguide/cli-install-macos.html
