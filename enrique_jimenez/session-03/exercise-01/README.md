# K8s-training - Session 03 - Exercise 01

Bitnami kubernetes training session 03 - exercise 01

## Getting Started

Create namespaces "team-vision" and "team-api"

Namespace teamvision: max cpu 80% cores and Max memory 80% GB

* Provides 3 kubeconfigs and yaml files

User: jsalmeron
groups: tech-lead, dev

User: juan
group: dev, api

User: dbarranco
group: sre

Notes:
* devs can see resources in both spaces
* api members can create resources in team-api
* vision members can create/delete resources in team-vision (except secrets)
* tech-leads can create/delete resources in both spaces (except secrets)
* ONLY sres can create/delete/access secrets

### Prerequisites

* Kubernetes cluster
* Kubectl cli


### Kubeconfig files

* config-dbarranco  
* config-jsalmeron  
* config-juan

### Yaml files

* namespaces.yml
* resourcequota.yaml
* rolebindings.yaml
* roles.yaml

### Bash files

* 01-create_certificates.bash 
* 02-kubectl_contexts.bash
