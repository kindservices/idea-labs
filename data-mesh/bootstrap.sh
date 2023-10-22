#!/usr/bin/env bash

([ -d code ] || mkdir -p code) && cd code

function installKube() {
cat <<-END

IIIII               tt            lll lll iii                    KK  KK         bb             
 III  nn nnn   sss  tt      aa aa lll lll     nn nnn   gggggg    KK KK  uu   uu bb        eee  
 III  nnn  nn s     tttt   aa aaa lll lll iii nnn  nn gg   gg    KKKK   uu   uu bbbbbb  ee   e 
 III  nn   nn  sss  tt    aa  aaa lll lll iii nn   nn ggggggg    KK KK  uu   uu bb   bb eeeee  
IIIII nn   nn     s  tttt  aaa aa lll lll iii nn   nn      gg    KK  KK  uuuu u bbbbbb   eeeee 
               sss                                     ggggg                                   
END

    git clone https://github.com/kindservices/local-kubernetes.git 
    pushd ./local-kubernetes
    # if already installed this should just have no effect
    make install
    make login
    popd
}

function clone() {
  cat <<-END

 CCCCC  lll                iii                 
CC    C lll  oooo  nn nnn      nn nnn   gggggg 
CC      lll oo  oo nnn  nn iii nnn  nn gg   gg 
CC    C lll oo  oo nn   nn iii nn   nn ggggggg 
 CCCCC  lll  oooo  nn   nn iii nn   nn      gg 
                                        ggggg  

END

  [ -d datamesh-service-registry ] || git clone https://github.com/kindservices/datamesh-service-registry.git
  [ -d datamesh-dashboard ] || git clone https://github.com/kindservices/datamesh-dashboard.git
  [ -d datamesh-component-pinot ] || git clone https://github.com/kindservices/datamesh-component-pinot.git
}

function install() {
    cat <<-END

IIIII               tt            lll lll iii                 
 III  nn nnn   sss  tt      aa aa lll lll     nn nnn   gggggg 
 III  nnn  nn s     tttt   aa aaa lll lll iii nnn  nn gg   gg 
 III  nn   nn  sss  tt    aa  aaa lll lll iii nn   nn ggggggg 
IIIII nn   nn     s  tttt  aaa aa lll lll iii nn   nn      gg 
               sss                                     ggggg  

END


  ./datamesh-service-registry/install.sh
  ./datamesh-dashboard/install.sh
  ./datamesh-component-pinot/install.sh
}



# conditional check to see if we have the data-mesh namespace
(kubectl get namespace argocd && echo "argocd looks to be installed") || installKube


clone && install
