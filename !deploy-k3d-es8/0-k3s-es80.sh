#!/bin/bash
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
k3d cluster create es80 --servers 1 --agents 2 --port '9200:9200@agent1' --port '9300:9300@agent1' --port '5601:5601@agent1' --port '8081:80@loadbalancer'
