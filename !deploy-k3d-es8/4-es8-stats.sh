#!/bin/bash
echo $(kubectl get secret es8-es-elastic-user -o go-template='{{.data.elastic | base64decode}}')
PASSWORD=$(kubectl get secret es8-es-elastic-user -o go-template='{{.data.elastic | base64decode}}')
curl -u "elastic:$PASSWORD" -k "https://localhost:9200"
