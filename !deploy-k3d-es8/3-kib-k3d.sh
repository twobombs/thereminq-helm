#!/bin/bash
cat <<EOF | kubectl apply -f -
apiVersion: kibana.k8s.elastic.co/v1
kind: Kibana
metadata:
  name: es8
spec:
  version: 8.2.2
  count: 1
  elasticsearchRef:
    name: es8
EOF
