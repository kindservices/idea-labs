# Running

You can run the data-mesh locally, or easily port it to your own kubenetes cluster in whichever cloud you use.

Note: Our repos use [Makefile](https://opensource.com/article/18/8/what-how-makefile)s as a means to build.

## Running Locally

Our data-mesh is based on kubenetes and ArgoCD. 

To get started with those technologies, you can clone our [kindservices/local-kubernetes repo](https://github.com/kindservices/local-kubernetes):
```bash
git clone https://github.com/kindservices/local-kubernetes.git && cd local-kubernetes && make 
```

Once running, you should have any empty ArgoCD instance locally:

# Installing the components

You can then clone each separate component, which knows how to install itself using `argocd`:

```bash
git clone https://github.com/kindservices/idealab-service-registry.git && ./idealab-service-registry/install.sh
git clone https://github.com/kindservices/idealab-dashboard.git && ./idealab-dashboard/install.sh
```


You should then be able to see the components installin in argo:

Or check them out in the 'data-mesh' namespace using a tool like [k9s](https://k9scli.io/):

