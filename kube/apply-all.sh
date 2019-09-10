#! /bin/bash

for manifest in ~/dockercoins/kube/*.yml; do
    kubectl apply -f $manifest
done
