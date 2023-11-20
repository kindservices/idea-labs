# Running

You can run the data-mesh locally, or easily port it to your own kubenetes cluster in whichever cloud you use.

Note: Our repos use [Makefile](https://opensource.com/article/18/8/what-how-makefile)s as a means to build.


# Installing the components

You can use the [installK8S.sh](./installK8S.sh) to install the necessary kubernetes componenets (kubectl, kind and argocd).

Once running, you should have any empty ArgoCD instance locally:

![Argo Empty](./argo-empty.png)

With argocd up and running, you can use [installDataMesh.sh](./installDataMesh.sh) to install the componenets.

You should then be able to see the components installing in argo:
![Argo Installing](./argo-installing.png)

Or check them out in the 'data-mesh' namespace using a tool like [k9s](https://k9scli.io/):

![K9S installed](./k9s-installed.png)


# Creating new components

We've created a widget template for creating new web components.

There could be multiple templates, perhaps for different web frameworks or use-cases.

The idea is that you can bootstrap a new component which knows:
 * How to produce a web component
 * How to package itself up and push an image (github actions to dockerhub)
 * How to deploy itself (a kubernetes service declaration, as well as an 'installArgo' Makefile target)

 You can read more and follow the instructions at our [kindservices/datamesh-widget-svelte.g8](https://kindservices.github.io/datamesh-widget-svelte.g8/) github repo


# Cleaning up
If you want to start over/get stuck, you can wipe-out your kubernetes applications by using the `uninstall.sh` script
