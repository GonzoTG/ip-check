This small bash script will check your public IPv4 address and send a pushover notification if the address changes.

This was developed for Ubuntu 22.04

## Requirements:
pushover-cli (can be installed from snap)<br>
curl
```
sudo snap install pushover-cli
sudo apt-get install curl
```
## Prerequisites:
Set up the pushover client by running:
```
pushover-cli config setup
```

Note: IF you are going to run in cron as root, you need to use:
```
sudo pushover-cli config setup
```
