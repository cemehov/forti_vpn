#!/usr/bin/expect
spawn /forti/forticlientsslvpn/64bit/forticlientsslvpn_cli --server $::env(VPN_ADDR) --vpnuser $::env(VPN_USER) --pkcs12 cert/$::env(VPN_USER).pfx --keepalive
expect "Password for VPN:"
send $::env(VPN_PASS)\r
expect "Password for PKCS#12:"
send $::env(VPN_CERT_PASS)\r
expect "*(Y/N)"
send "Y\r"
interact
