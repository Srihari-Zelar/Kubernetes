#!/bin/bash

mkdir -p ~/.kube
curl -s https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/terraform/install.sh | sudo bash
curl -s https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/k8-client-stack/install.sh | sudo bash
curl https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/eksctl/install.sh | sudo bash

eksctl create cluster --name sample --region us-east-1 --managed