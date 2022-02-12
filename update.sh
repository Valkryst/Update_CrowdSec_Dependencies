#!/bin/bash



cscli hub update
cscli hub upgrade


cscli collections upgrade crowdsecurity/base-http-scenarios
cscli collections upgrade crowdsecurity/http-cve
cscli collections upgrade crowdsecurity/iptables
cscli collections upgrade crowdsecurity/linux
cscli collections upgrade crowdsecurity/linux-lpe
cscli collections upgrade crowdsecurity/nginx
cscli collections upgrade crowdsecurity/nginx-proxy-manager
cscli collections upgrade crowdsecurity/pgsql
cscli collections upgrade crowdsecurity/sshd



systemctl reload crowdsec
