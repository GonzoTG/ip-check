This small bash script will check your public IPv4 address and send a pushover notification if the address changes.

This was developed for Ubuntu 22.04

Requirements:
pushover-cli (can be installed from snap)
curl

Pre-requisites:
Set up the pushover client by running:

pushover-cli config setup
