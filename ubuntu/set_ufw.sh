#!/bin/bash

sudo ufw enable
sudo ufw default deny
sudo ufw allow from 192.168.50.0/24 to any port 22
sudo ufw status verbose