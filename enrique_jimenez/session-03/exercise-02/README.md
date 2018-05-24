# K8s-training - Session 03 - Exercise 02

Bitnami kubernetes training session 03 - exercise 02

## Getting Started

* Add a NetworkPolicy to either WordPress + MariaDB (session 1) or LEMP Helm chart (session 2)

* Only the frontend pods can access the database

### Prerequisites

* Kubernetes cluster
* Kubectl cli

### Installing

Run the next command to setup the wordpress-mariadb environment in k8s.

Dont forget to add the cluster ip pointing to the domain wordpress-exercise-01.com to the /etc/hosts , you can do this with this single line command
```
echo "$CLUSTER_IP   wordpress-exercise-01.com" | sudo tee -a /etc/hosts
```
### Credentials

The credential used for wordpress and database is "admin/admin".

#### Create namespace
```
kubectl create -f namespace.yml
```

#### Launch mariadb stuff
```
kubectl create -f mariadb-secret.yml
kubectl create -f mariadb-configmap.yml
kubectl create -f mariadb-deployment.yml
kubectl create -f mariadb-service.yml
```

#### Launch wordpress stuff
```
kubectl create -f wordpress-secret.yml
kubectl create -f wordpress-deployment.yml
kubectl create -f wordpress-service.yml
kubectl create -f ingress.yml
```

#### launch network policy ####
```
kubectl create -f networkpolicy.yaml
```

#### Visit the WP cluster
http://wordpress-exercise-01.com 

#### Cleaning the k8s cluster
Run this command to remove all the resources created before.
```
for i in services deployment ingress secrets configMap;  do kubectl delete $i --all --namespace=exercise-02; done
```

