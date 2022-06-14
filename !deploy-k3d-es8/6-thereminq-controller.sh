#!/bin/bash
#
kubectl port-forward deployment.apps/thereminq-controller 6080 --address='0.0.0.0' &
