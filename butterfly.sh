#!/bin/bash

pip install butterfly
ecat << __EOF__ > /etc/systemd/system/butterfly.service
[Unit]
Description=Butterfly Terminal Server

[Service]
ExecStart=/usr/bin/butterfly.server.py
__EOF__

systemctl enable butterfly
systemctl start butterfly
