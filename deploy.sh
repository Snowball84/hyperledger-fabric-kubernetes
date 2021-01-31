#!/usr/bin/env bash

kubectl apply -f k8s/namespaces;
kubectl apply -f k8s/secrets/org1.dummy.com;
kubectl apply -f k8s/storage/pv;
kubectl apply -f k8s/storage/pvc;
kubectl apply -f k8s/job;
kubectl wait --timeout=60s --for=condition=complete --namespace dummy-com job.batch/setup;
kubectl apply -k k8s;