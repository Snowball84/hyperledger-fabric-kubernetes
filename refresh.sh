#!/usr/bin/env bash
kubectl rollout restart daemonset -n kube-flannel kube-flannel-ds
kubectl rollout restart deployment coredns -n kube-system
