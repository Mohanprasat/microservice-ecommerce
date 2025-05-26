sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
kubectl get all -n webapps
kubectl apply -f svc-acc.yaml
sudo nano deployment-service.yml
kubectl apply -f deployment-service.yml
git init
git add . && git commit -m "deployment"
git remote add origin https://github.com/Mohanprasat/microservice-ecommerce.git
git push origin main
git push origin master 
git push origin master --force
ls
sudo nano Jenkinsfile
git add . && git commit -m "files"
git push origin master --force
kubectl describe secret mysecretname -n webapps
sudo nano mysecretname.yaml
kubectl apply -f mysecretname.yaml
kubectl describe secret mysecretname -n webapps
ls
sudo nano  svc-acc.yaml
kubectl apply -f  svc-acc.yaml
rm  svc-acc.yaml
ls
rm role-bind.yaml 
rm app-role.yaml
rm mysecretname.yaml
ls
rm secret mysecretname.yaml
ls
clear
sudo nano svc-acc.yml
kubectl apply -f svc-acc.yml
ls
sudo nano app-role.yml
kubectl apply -f app-role.yml
sudo nano role-bind.yml
kubectl apply -f role-bind.yml
sudo nano secret-token.yml
kubectl apply -f secret-token.yml
git branch -d main
git init
git branch
git fetch --all
git prune
rm .git/gc.log
git gc
git fetch --all
git branch -r
git checkout main
git checkout -b main origin/main
git stash
git checkout main
git stash pop
git add .
git commit -m "Save kube cache changes"
git checkout main
git reset --hard
git checkout main
# Make sure you're on main
git checkout main
# Merge the latest changes from master
git merge master
git push origin main
git log main..master
sudo systemctl restart jenkins
sudo systemctl start jenkins
git init
git add Jenkinsfile
git commit -m "completed"
rm -rf .kube/cache/http/*
git reset --hard
git branch
git checkout master
git branch
git push origin main --force
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
ls
ls -ll
sudo nano Jenkinsfile
git init
git add && commit -m "firstdeploy"
git add .
git commit -m "deployed"
git push origin main
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo cat Jenkinsfile
 sudo nano Jenkinsfile
git init
git add .
git commit -m "deployed"
git push origin main
aws eks --region ap-south-1  update-kubeconfig --name EKS-1
aws configure
aws configure
aws eks --region ap-south-1  update-kubeconfig --name EKS-1
sudo nano jenkins-sa.yaml
kubectl apply -f jenkins-sa.yaml
SECRET_NAME=$(kubectl -n kube-system get sa jenkins-sa -o jsonpath="{.secrets[0].name}")
kubectl -n kube-system get secret $SECRET_NAME -o jsonpath="{.data.token}" | base64 --decode
kubectl get all -n webapps
kubectl get ns
kubectl describe secret mysecretname -n webapps
ls
kubectl -n kube-system get secret jenkins-sa-token -o jsonpath="{.data.token}" | base64 --decode
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: ServiceAccount
metadata:
  name: jenkins-sa
  namespace: kube-system
EOF

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: jenkins-sa-token
  namespace: kube-system
  annotations:
    kubernetes.io/service-account.name: jenkins-sa
type: kubernetes.io/service-account-token
EOF

cat <<EOF | kubectl apply -f -
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: jenkins-sa-binding
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: jenkins-sa
  namespace: kube-system
EOF

kubectl -n kube-system get secret jenkins-sa-token -o jsonpath="{.data.token}" | base64 --decode
kubectl describe secret mysecretname -n webapps
kubectl apply -f secret-token.yml -n webapps
kubectl apply -f secret-token.yaml -n webapps
 sudo nano Jenkinsfile
 sudo nano Jenkinsfile
git init
git add .
git commit -m "deployeed"
git push origin main
kubectl apply -f deployment-service.yml
ls
sudo nano deployment-service.yml
sudo nano deployment-service.yml
 sudo nano Jenkinsfile
git init
git add . Jenkinsfile
git commit -m "deployed"
git push origin main
kubectl apply -f deployment-service.yml
kubectl apply -f deployment-service.yml
sudo nano deployment-service.yml
 sudo nano Jenkinsfile
git init
git add . Jenkinsfile
git commit -m "deployed"
git push origin main
kubectl get all -n webapps

 sudo nano Jenkinsfile
git add . Jenkinsfile
git commit -m "deployed"
git push origin main
sh "kubectl config view"
~/.kube/config
ls
[[ ! -z "$KUBECONFIG" ]] && echo "$KUBECONFIG" || echo "$HOME/.kube/config"
ls
export KUBECONFIG=/home/ubuntu/kubeconfig.yaml
aws eks update-kubeconfig --ap-south-1 
aws eks update-kubeconfig --ap-south-1 -n webapps
aws eks update-kubeconfig --ap-south-1 -n EKS-1
aws configure
kubectl get ns
kubectl get all -n webapps
aws configure
aws eks update-kubeconfig --ap-south-1 -n EKS-1
git add . Jenkinsfile
 sudo nano Jenkinsfile
ls
kubectl apply -f deployment-service.yml
git init
git add .
git commit -m "mondaycommit"
git pull 
sudo nano Jenkinsfile
sudo nano deployement-service.yml
sudo nano deployment-service.yml
kubectl apply -f deployment-service.yml
git init
git add .
git commit -m "monday"
git push origin main
git fetch https://github.com/Mohanprasat/microservice-ecommerce.git
kubectl apply -f deployment-service.yml --dry-run=client -o yaml
sudo docker pull kanha05/emailservice:latest
sudo nano 
sudo nano deployment-service.yaml
kubect apply -f deployment-service.yaml
kubectl apply -f deployment-service.yaml
git init
git add .
git commit -m "mondayy"
git push origin main
sudo systemctl restart jenkins
sudo systemctl start jenkins
