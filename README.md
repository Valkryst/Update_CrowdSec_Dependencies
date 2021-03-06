The installed collections, and those updated by this script, were chosen specifically for my use cases. You can [search for collections](https://hub.crowdsec.net/), install those you deem necessary, and update the script to upgrade whichever collection(s) you choose.

## Requirements

To use this script, you must be running [CrowdSec](https://github.com/crowdsecurity/crowdsec) on Linux.

## Installation

To run this script, copy and paste the following commands into your bash terminal.

```bash
# Install Dependencies
sudo apt update
sudo apt install wget

cscli collections install crowdsecurity/base-http-scenarios
cscli collections install crowdsecurity/http-cve
cscli collections install crowdsecurity/iptables
cscli collections install crowdsecurity/linux
cscli collections install crowdsecurity/linux-lpe
cscli collections install crowdsecurity/nginx
cscli collections install crowdsecurity/nginx-proxy-manager
cscli collections install crowdsecurity/pgsql
cscli collections install crowdsecurity/sshd


# Download Script
sudo wget https://github.com/Valkryst/Update_CrowdSec_Dependencies/blob/main/update.sh



# Modify the script's permissions to allow it to be run.
sudo chmod +x update.sh



# Run the script
sudo ./update.sh
```

You may opt to add a [cron](https://en.wikipedia.org/wiki/Cron) job to run the script at a set interval. Add the following line to your `sudo crontab -e` file.

```bash
0 * * * * /bin/bash /path/to/update.sh 2>&1 >> /path/to/update.log
```
