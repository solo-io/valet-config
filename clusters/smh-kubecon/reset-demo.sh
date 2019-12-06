#!/bin/bash

set -x 

kubectl delete meshbridges.zephyr.solo.io -n bookinfo --all
kubectl delete traffictargets -n bookinfo --all
kubectl delete trafficsplits -n bookinfo --all
kubectl delete httproutegroups -n bookinfo --all
kubectl delete secret --field-selector type=solo.io/kubeconfig -n sm-marketplace
kubectl delete mesh -n sm-marketplace --all
kubectl delete meshgroup -n sm-marketplace --all
kubectl delete clusterrbacconfig --all
kubectl delete pod -n sm-marketplace --all

