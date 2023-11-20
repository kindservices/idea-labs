#!/usr/bin/env bash

echo "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "  ! This operation will tear-down (delete) all the kubernetes resources (argocd, data-mesh, etc). !"
echo "  ! Make sure your kubectl is pointing at the right cluster (e.g. your local Kind cluster)        !"
echo "  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo 

nuke() {
    echo "  +--------------------------------------+"
    echo "  | deleting datamesh-component-pinot... |"
    echo "  +--------------------------------------+"
    [ -d ./code/datamesh-component-pinot ] && ./code/datamesh-component-pinot/uninstall.sh

    echo "  +---------------------------------------+"
    echo "  | deleting datamesh-service-registry... |"
    echo "  +---------------------------------------+"
    [ -d ./code/datamesh-service-registry ] && ./code/datamesh-service-registry/uninstall.sh

    echo "  +-------------------------------+"
    echo "  | deleting argocd namespace.... |"
    echo "  +-------------------------------+"
    kubectl delete namespace argocd

    echo "  +----------------------------------+"
    echo "  | deleting data-mesh namespace.... |"
    echo "  +----------------------------------+"
    kubectl delete namespace data-mesh
}

prompt() {
    read -p "Do you wish to continue? (y/n): " choice

    case "$choice" in
    y|Y )
        echo "Ok! Here goes..."
        nuke
        ;;
    n|N )
        echo "Phew! That was close!"
        exit 1
        ;;
    * )
        echo "Invalid choice. Please enter 'y' or 'n'."
        prompt
        ;;
    esac
}

prompt
