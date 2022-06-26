#!/bin/bash
echo $(kubectl get secret es8-es-elastic-user -o go-template='{{.data.elastic | base64decode}}')
PASSWORD=$(kubectl get secret es8-es-elastic-user -o go-template='{{.data.elastic | base64decode}}')

kubectl port-forward service/es8-es-http 9200 --address='0.0.0.0' &
kubectl port-forward service/es8-kb-http 5601 --address='0.0.0.0' &

sleep 10

curl -u "elastic:$PASSWORD" -k "https://localhost:9200"
