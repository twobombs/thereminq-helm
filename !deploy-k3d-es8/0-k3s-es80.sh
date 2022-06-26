#!/bin/bash
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
snap install kubectl --classic
k3d cluster create es80 --servers 1 --agents 2 --port '8081:80@loadbalancer'
