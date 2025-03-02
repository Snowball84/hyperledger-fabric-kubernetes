#!/usr/bin/env bash

kubectl delete statefulset,deployment,ingress,service,job,secrets,pvc --all --namespace dummy-com && kubectl delete pv local-volume && kubectl delete pv local-volume-2 && kubectl delete pv local-volume-3 && kubectl delete pv local-volume-4 && kubectl delete pv local-volume-5
sudo rm -rf /mnt/nfs-share/*
