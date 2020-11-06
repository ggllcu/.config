#!/bin/bash
alias lg_ssh_aws="ssh -i /Users/lucaguglielmi/.ssh/aws-lucaguglielmi.pem ec2-user@ec2-34-245-232-94.eu-west-1.compute.amazonaws.com
 -v"
alias lg_ssh_nims="ssh -i /Users/lucaguglielmi/Works/_pem/nims.pem centos@18.203.164.6 -v"
alias lg_ssh_pam_mautic="ssh -i /Users/lucaguglielmi/Works/_pem/furnax.pem centos@34.243.204.54 -v"
alias lg_ssh_boscaini="ssh root@195.201.119.96 -v"
alias lg_ssh_s5="ssh root@88.99.175.32 -v"
alias lg_ssh_viessmann="ssh -i /Users/lucaguglielmi/Works/_pem/viessmann.pem ec2-user@34.241.214.12 -v"
alias lg_ssh_cms="ssh -i /Users/lucaguglielmi/Works/_pem/fornace2015.pem ec2-user@54.229.25.44 -v"
alias lg_ssh_s1="ssh -i /Users/lucaguglielmi/Works/_pem/fornace2015.pem ec2-user@54.194.83.229 -v"
alias lg_ssh_pam_loyal="ssh -i /Users/lucaguglielmi/Works/_pem/furnax.pem centos@34.251.161.237 -v"
alias lg_ssh_bertoldo="ssh -i /Users/lucaguglielmi/Works/_pem/furnax.pem root@94.130.176.118 -v"
alias lg_ssh_bertoldo_database="ssh -i /Users/lucaguglielmi/Works/_pem/furnax.pem root@116.203.154.210 -v"
alias lg_ssh_bertoldo_service="ssh -i /Users/lucaguglielmi/Works/_pem/LightsailDefaultKey-eu-west-1.pem ubuntu@108.128.106.72 -v"
alias lg_ssh_preventivatore="ssh -i /Users/lucaguglielmi/Works/_pem/LightsailDefaultKey-eu-west-1.pem ec2-user@34.249.220.22 -v"

alias lg_virtual_hosts="st /usr/local/etc/httpd/extra/httpd-vhosts.conf"

# Mac Os maintenance
alias lg_maintenance="sudo periodic daily weekly monthly && sudo rm -rf /Users/lucaguglielmi/Library/Caches/*"
alias lg_cache="rm -r /Users/lucaguglielmi/Library/Caches/*"

alias lg_redis="redis-server /usr/local/etc/redis.conf"

# Virtual Box Win10
alias lg_win10="diskutil unmount /Volumes/BOOTCAMP && sudo chmod 777 /dev/disk0s1 && sudo chmod 777 /dev/disk0s3"

#Pam Coupon
alias lg_pam_coupon="cd ~/Works/pam/ && php bin/console pam:coupon:import "
alias lg_pam_coupon_short="cd ~/Works/pam-core-develop/ && php bin/console pam:coupon:import "

#Tmux Sessions
alias lg_tmux_svr="sh ~/.bin/tmux_svr"
alias lg_tmux_nvim_config="sh ~/.bin/tmux_nvim_config"
alias lg_tmux_nvim_bin="sh ~/.bin/tmux_nvim_bin"
alias lg_tmux_questionnaire="sh ~/.bin/tmux_questionnarie"
