#!/bin/bash
cat <<EOF | kubectl apply -f -
apiVersion: elasticsearch.k8s.elastic.co/v1
kind: Elasticsearch
metadata:
  name: es8
spec:
  version: 8.2.2
  nodeSets:
  - name: default
    count: 3
    config:
      node.store.allow_mmap: false
EOF
