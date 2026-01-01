<img width="1536" height="1024" alt="ChatGPT Image Jan 1, 2026, 12_55_47 PM" src="https://github.com/user-attachments/assets/64036380-01d8-4b3a-9152-eff641577d4c" />


These vQbit Tooling HELM Charts are made for deployment in K8s/K3d/K3s environments

When not using Ingress forward ports to the the outside of the Node/ClusterIP

## Repository Overview

This repository contains Helm charts and deployment scripts for the vQbit Tooling project. The project is designed for deployment in Kubernetes (K8s), K3d, and K3s environments.

### Helm Charts

The repository includes the following Helm charts:

*   **qrackmin-qbdd-k8sycamore**: Helm Chart for Qrackmin Sycamore timed subset.
*   **thereminq-controller**: Helm Chart for thereminq.
*   **thereminq-games**: Helm Chart for thereminq games.
*   **thereminq-tensors-jupyter-pocl**: Helm Chart for thereminq-tensors jupyter.
*   **thereminq-llama**: Helm Chart for thereminq-llama.
*   **thereminq-tensors**: Helm Chart for thereminq-tensors.

Each Helm chart directory contains a `Chart.yaml` file with metadata about the chart, a `values.yaml` file for configuration, and a `templates` directory with Kubernetes manifest templates.

### Deployment Scripts

The `!deploy-k3d-es8/` directory contains a set of shell scripts for deploying the project to a K3d cluster with Elasticsearch 8. The scripts are numbered in the order they should be executed:

1.  **0-k3s-es80.sh**: Installs K3d and creates a K3d cluster named `es80`.
2.  **1-k3d-eck.sh**: Deploys the Elastic Cloud on Kubernetes (ECK) operator and the Elastic Agent.
3.  **2-es08-k3d.sh**: Deploys an Elasticsearch cluster named `es8`.
4.  **3-kib-k3d.sh**: Deploys a Kibana instance named `es8`.
5.  **4-es8-stats.sh**: Retrieves the Elasticsearch password, forwards ports for Elasticsearch and Kibana, and prints the cluster stats.
6.  **5-filebeat.sh**: Deploys Filebeat to collect logs from the cluster.
7.  **6-thereminq-controller.sh**: Forwards a port to the `thereminq-controller` deployment.

To deploy the project, execute these scripts in order from the `!deploy-k3d-es8/` directory.
