## Requirements

To use this script, you must be running [CrowdSec](https://github.com/crowdsecurity/crowdsec) on Linux.

## Installation

To run this script, copy and paste the following commands into your bash terminal.

```bash
# Install Dependencies
sudo apt update
sudo apt install wget



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
