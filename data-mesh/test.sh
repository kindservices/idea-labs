#!/usr/bin/env bash

mkdir tmp-test && cd tmp-test 

git clone https://github.com/kindservices/local-kubernetes.git 
pushd ./local-kubernetes
# if already installed this should just have no effect
make install
make login
popd

git clone https://github.com/kindservices/datamesh-service-registry.git && ./datamesh-service-registry/install.sh
git clone https://github.com/kindservices/datamesh-dashboard.git && ./datamesh-dashboard/install.sh
git clone https://github.com/kindservices/datamesh-component-pinot.git && ./datamesh-component-pinot/install.sh