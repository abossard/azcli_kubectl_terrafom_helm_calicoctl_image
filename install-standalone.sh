#!/bin/bash
set -euo pipefail
cd /usr/local/bin
# bash get cpu architecture
curl -L https://github.com/projectcalico/calico/releases/latest/download/calicoctl-linux-amd64 -o calicoctl
chmod +x ./calicoctl
curl -L https://github.com/projectcalico/calico/releases/latest/download/calicoctl-linux-amd64 -o kubectl-calico
chmod +x kubectl-calico
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
curl -L -o kubectl1263 "https://dl.k8s.io/release/v1.26.3/bin/linux/amd64/kubectl"
chmod +x ./kubectl1263
curl -L -o kubectl1265 "https://dl.k8s.io/release/v1.26.5/bin/linux/amd64/kubectl"
chmod +x ./kubectl1265
curl -sSL -o argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
chmod +x argocd
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
