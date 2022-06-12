#!/bin/bash
k3d cluster create es80 --servers 1 --agents 2 --port '9200:9200@agent:1' --port '9300:9300@agent:1' --port '5601:5601@agent:1' --port '8081:80@loadbalancer'
kubectl create -f https://download.elastic.co/downloads/eck/2.2.0/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/2.2.0/operator.yaml
kubectl -n elastic-system logs -f statefulset.apps/elastic-operator
