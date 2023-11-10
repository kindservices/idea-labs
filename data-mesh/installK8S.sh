#!/usr/bin/env bash
([ -d code ] || mkdir -p code) && pushd code

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


cat <<-END2

  AAA                            RRRRRR                      dd         !!! 
 AAAAA  rr rr   gggggg  oooo     RR   RR   eee    aa aa      dd yy   yy !!! 
AA   AA rrr  r gg   gg oo  oo    RRRRRR  ee   e  aa aaa  dddddd yy   yy !!! 
AAAAAAA rr     ggggggg oo  oo    RR  RR  eeeee  aa  aaa dd   dd  yyyyyy     
AA   AA rr          gg  oooo     RR   RR  eeeee  aaa aa  dddddd      yy !!! 
                ggggg                                            yyyyy      

END2

echo "==============================================================================="
echo "argocd installed - run ./installDataMesh.sh again to install the data-mesh components"
echo "==============================================================================="
popd