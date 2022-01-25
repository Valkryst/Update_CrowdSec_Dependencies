#!/bin/bash



cscli hub update
cscli hub upgrade



cscli collections upgrade crowdsecurity/iptables
cscli collections upgrade crowdsecurity/linux
cscli collections upgrade crowdsecurity/sshd
cscli collections upgrade crowdsecurity/base-http-scenarios
cscli collections upgrade crowdsecurity/nginx



systemctl reload crowdsec
