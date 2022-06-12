#!/bin/bash
echo $(kubectl get secret es8-es-elastic-user -o go-template='{{.data.elastic | base64decode}}')
PASSWORD=$(kubectl get secret es8-es-elastic-user -o go-template='{{.data.elastic | base64decode}}')
kubectl port-forward service/es8-es-http 9200
curl -u "elastic:$PASSWORD" -k "https://localhost:9200"
