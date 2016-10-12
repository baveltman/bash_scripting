#!/bin/bash
#displays common kubernetes cluster data

deployments=$(kubectl get deployments)
pods=$(kubectl get pods)
services=$(kubectl get services)

kube_details() {
  echo "## Deployments ##"
  echo ""
  echo "$deployments"
  echo ""
  echo "## Pods ##"
  echo ""
  echo "$pods"
  echo ""
  echo "## Services ##"
  echo ""
  echo "$services"
  echo ""
}

kube_details

exit
