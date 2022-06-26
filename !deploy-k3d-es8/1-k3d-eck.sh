#!/bin/bash
# deploy ECK and ES agent
kubectl create -f https://download.elastic.co/downloads/eck/2.2.0/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/2.2.0/operator.yaml
kubectl -n elastic-system logs -f statefulset.apps/elastic-operator
#
wget https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-8.2.2-amd64.deb
dpkg -i elastic-agent-8.2.2-amd64.deb
