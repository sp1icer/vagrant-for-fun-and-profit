#!/bin/bash

mkdir -p /home/vagrant/caldera_reports
echo vagrant | sudo -S apt-get update
echo vagrant | sudo -S apt-get install -y python3-pip git
git clone https://github.com/mitre/caldera.git --recursive --branch 2.7.0 /home/vagrant/caldera/
/usr/bin/python3 -m pip install -r /home/vagrant/caldera/requirements.txt
sed -i 's/host: 0.0.0.0/host: 192.168.33.10/g' /home/vagrant/caldera/conf/default.yml
sed -i 's/reports_dir: \/tmp/reports_dir: \/home\/vagrant\/caldera_reports/g' /home/vagrant/caldera/conf/default.yml
cd /home/vagrant/caldera/ || exit 1 && /usr/bin/python3 /home/vagrant/caldera/server.py --insecure &