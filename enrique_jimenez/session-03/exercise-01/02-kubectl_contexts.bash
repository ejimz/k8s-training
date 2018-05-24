kubectl config --kubeconfig=config-juan set-cluster sandbox --certificate-authority=ca.crt  --embed-certs=true --server=https://54.88.147.216:6443
kubectl config --kubeconfig=config-jsalmeron set-cluster sandbox --certificate-authority=ca.crt  --embed-certs=true --server=https://54.88.147.216:6443
kubectl config --kubeconfig=config-dbarranco set-cluster sandbox --certificate-authority=ca.crt  --embed-certs=true --server=https://54.88.147.216:6443

kubectl config --kubeconfig=config-juan set-credentials jsalmeron --client-certificate=jsalmeron.crt  --client-key=jsalmeron.key --embed-certs=true
kubectl config --kubeconfig=config-jsalmeron set-credentials juan --client-certificate=juan.crt  --client-key=juan.key --embed-certs=true
kubectl config --kubeconfig=config-dbarranco set-credentials dbarranco --client-certificate=dbarranco.crt  --client-key=dbarranco.key --embed-certs=true



kubectl config --kubeconfig=config-juan set-context sandbox-juan --cluster=sandbox --user=juan
kubectl config --kubeconfig=config-jsalmeron set-context sandbox-jsalmeron --cluster=sandbox --user=jsalmeron
kubectl config --kubeconfig=config-dbarranco set-context sandbox-dbarranco --cluster=sandbox --user=dbarranco
