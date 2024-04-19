@echo off
doskey k=kubectl $*
doskey kgp=kubectl get po $*
doskey kgs=kubectl get svc $*
doskey kga=kubectl get all $*
doskey ka=kubectl apply -f $*
doskey kdel=kubectl delete $*
doskey kdes=kubectl describe $*
doskey konnect=kubectl vsphere login --server=api-tanzu.fronius.com --tanzu-kubernetes-cluster-namespace at-tanzu-dataanalyst --tanzu-kubernetes-cluster-name tkg-staging-dataanalyst --insecure-skip-tls-verify $*
doskey konnectpro=kubectl vsphere login --server=api-tanzu.fronius.com --tanzu-kubernetes-cluster-namespace at-tanzu-dataanalyst --tanzu-kubernetes-cluster-name tkg-prod-dataanalyst --insecure-skip-tls-verify $*
doskey konnectDev=kubectl vsphere login --server=api-tanzu.fronius.com --tanzu-kubernetes-cluster-namespace at-tanzu-dataanalyst --tanzu-kubernetes-cluster-name tkg-dev-dataanalyst --insecure-skip-tls-verify $*
doskey kpf=kubectl port-forward $*
doskey kgse=kubectl get secrets $*
doskey kns=kubectl config set-context --current --namespace $*
doskey kg=kubectl get $*
doskey ke=kubectl edit $*
doskey kc=kubectl create $*
doskey kl=kubectl logs $*
doskey ku=kustomize $*
doskey exec=kubectl exec -it  $*
doskey kr=kubectl run $*
doskey clusterDev=kubectl config use-context tkg-dev-dataanalyst $*
doskey clusterStaging=kubectl config use-context tkg-staging-dataanalyst $*
doskey clusterProd=kubectl config use-context tkg-prod-dataanalyst $*
doskey gc=git clone $*