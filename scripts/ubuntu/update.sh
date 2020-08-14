#!/bin/bash

apt-get update && apt-get -y full-upgrade
[ -f /var/run/reboot-required ] && reboot -f