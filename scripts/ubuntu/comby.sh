#!/bin/bash

echo vagrant | sudo -S apt-get install -y curl
bash <(curl -sL get.comby.dev)