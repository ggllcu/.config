#!/bin/bash
# Mac Os maintenance
alias lg_maintenance="sudo periodic daily weekly monthly && sudo rm -rf /Users/lucaguglielmi/Library/Caches/*"
alias lg_cache="rm -r /Users/lucaguglielmi/Library/Caches/*"

# Virtual Box Win10
alias lg_win10="diskutil unmount /Volumes/BOOTCAMP && sudo chmod 777 /dev/disk0s1 && sudo chmod 777 /dev/disk0s3"

#Tmux Sessions
alias lg_tmux_svr="sh ~/.bin/tmux_svr"
alias lg_tmux_nvim_config="sh ~/.bin/tmux_nvim_config"
alias lg_tmux_nvim_bin="sh ~/.bin/tmux_nvim_bin"
alias lg_tmux_questionnaire="sh ~/.bin/tmux_questionnarie"
