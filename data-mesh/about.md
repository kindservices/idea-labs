# Data Mesh

This lab was started in October 2023 to showcase a real-tiem analytics platform.

It was chosen as it its constituent components are all very reusable, interesting, and deliver value in their own right.

Amazon defines a [data-mesh](https://aws.amazon.com/what-is/data-mesh/) as:

```
... an architectural framework that solves advanced data security challenges through distributed, decentralized ownership. Organizations have multiple data sources from different lines of business that must be integrated for analytics.
...
```

If you want to try it out or contribute, start [here](./running.md).

# The Business Case

We're creating an internal-facing web application based on [golden-layout](https://golden-layout.com/):

![Windowing](./golden-layout.png)

The idea is that disparate parts of an organisation are interested in different information to do their job effectively.

Each business unit should be able to quickly commission a new component which fetches and displays information in a way intuitive for them, and in a way which doesn't affect or interfere with other areas of the business (i.e. the dreaded "feature bloat").

The effect is that different business units will have their own "data concierge" (I thought I coined that term, but it turns out no. Oh well). This is akin to day traders having their own "quants" or "strats" who gather and present information important to traders.

It should also be attractive to the engineering department, who can have a mature dashboard component with flow-aligned engineers who can support their disparate business functions (see [team topologies](https://teamtopologies.com/)).

# The High-Level Requirements

This platform will essentially have a marketplace of widgets. When a user creates a new window, they're given a choice of what to put in that window from a list of available widgets.

We want to support `"power users"` who can commission new widgets, and then arrange them in a way which makes sense. It's a bit like a content-management system (CMS) on steroids.

We also want to support `"casual users"`, who can view a clean, distration-free layout.

Furthermore, the components should be able to react to user events from each other. For example, selecting a row in a table widget should be able to trigger an update in a graph shown in another widget.

Lastly, users should be able to share and copy their window arrangements. A new-starter in some department might want to clone the head-of-department's layout, but then make some tweaks of their own.


# Engineering Approach

We wanted to create a data-mesh platform using a [micro front-end architecture](https://micro-frontends.org/) leveraging [web components](https://developer.mozilla.org/en-US/docs/Web/API/Web_components)

To get this right, we should have a very low barrier-to-entry for creating and deploying new widgets. People should be able to use whatever frameworks they like, so long as it can render as a web component.

## Design

We split this platform into four distinct deliverables, each which has its own utility

### 1. The Platform

To keep the deployment code simple and portable, we're basing our architecture on kubernetes, and use ArgoCD for the deployment.

This has the added benefit of proving a great dev experience to developers, who will be able to run the whole stack locally.

### 2. The "data-mesh" Service Registry

This is a simple REST service for service disovery

The github repo is at [kindservices/datamesh-service-registry](https://github.com/kindservices/datamesh-service-registry)


### 3. The Dashboard

This the windowing component which knows how to display web components.

The github repo is at [kindservices/datamesh-dashboard](https://github.com/kindservices/datamesh-dashboard)


### 4. The Widgets Components

The github repo is at [kindservices/datamesh-component-svelte](https://github.com/kindservices/datamesh-component-svelte)


We want these widgets to be as close to vanilla web components as possible, without the complexity of having to know about the data-mesh platform.

We can make this possible by separating the concern of registering with our service registry into a [sidecar](https://kubernetes.io/blog/2023/08/25/native-sidecar-containers/).


### 5. An example tracker component

We want one of our components to include an analytics example based on having a tracking-pixel and corresponding display based on Apache Pinot.