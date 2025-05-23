curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip
unzip awscliv2.zip
sudo ./aws/install
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin
kubectl version --short --client
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
aws configure
eksctl create cluster --name=EKS-1 --region=ap-south-1 --zones=ap-south-1a,ap-south-1b --without-nodegroup
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
eksctl create cluster --name=EKS-1 --region=ap-south-1 --zones=ap-south-1a,ap-south-1b --without-nodegroup
eksctl utils associate-iam-oidc-provider --region ap-south-1 --cluster EKS-1 --approve
eksctl create nodegroup --cluster=EKS-1 --region=ap-south-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=DevOps --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
eksctl create nodegroup --cluster=EKS-1 --region=ap-south-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20  --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
eksctl utils associate-iam-oidc-provider --region ap-south-1 --cluster EKS-1 --approve
eksctl create nodegroup --cluster=EKS-1 --region=ap-south-1 --name=node2 --node-type=t3.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access
sudo apt install openjdk-17-jre-headless
apt-get update
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
sudo apt update
sudo apt install fontconfig openjdk-21-jre
java -version
openjdk version "21.0.3" 2024-04-16
OpenJDK Runtime Environment (build 21.0.3+11-Debian-2)
OpenJDK 64-Bit Server VM (build 21.0.3+11-Debian-2, mixed mode, sharing)
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo apt install docker.io -y
sudo chmod 666 /var/run/docker.sock
sudo nano svc-acc.yaml
kubectl apply -f svc-acc.yaml
sudo nano app-role.yaml
kubectl apply -f app-role.yaml
sudo nano role-bind.yaml
kubectl apply -f role-bind.yaml
kubectl get ns
kubectl get nodes
sudo kubectl get nodes
kubectl describr secret mysecretname -n webapps 
sudo kubectl describr secret mysecretname -n webapps 
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo nano svc-acc.yaml
sudo kubectl apply -f svc-acc.yaml
kubectl config current-context
sudo kubectl config current-context
kubectl get pods
aws eks update-kubeconfig --name EKS-1 --region ap-south-1
gcloud container clusters get-credentials EKS-1 --zone ap-south-1
sudo snap install google-cloud-cli
sudo snap install google-cloud-sdk 
az aks get-credentials --resource-group ap-south-1 --name EKS-1
sudo az aks get-credentials --resource-group ap-south-1 --name EKS-1
minikube start
minitube start
sudo apt install minikube
minikube start
kubectl config current-context
kubectl get nodes
kubectl get pods -A
kubectl config current-context
kubectl get pods
ls
kubectl apply -f rolebind.yaml
sudo nano svc-acc.yaml
sudo kubectl apply -f svc-acc.yaml
kubectl config view
aws eks list-clusters --region Asia Pacific (Mumbai)
aws eks list-clusters --region ap-south-1
aws eks update-kubeconfig --name EKS-1 --region ap-south-1
kubectl get nodes
kubectl get ns
kubectl describe secret mysecretname -n webapps
sudo nano app-role.yaml
kubectl apply -f app-role.yaml
kubectl create namespace webapps
kubectl get ns
kubectl create namespace webapps
kubectl describe secret mysecretname -n webapps
kubectl get namespaces
kubectl get secrets -n webapps
kubectl create namespace webapps
kubectl get secrets -n webapps
kubectl create secret generic mysecretname   --from-literal=username=myuser   --from-literal=password=mypass   -n webapps
kubectl describe secret mysecretname -n webapps
kubectl get ns
kubectl describe secret mysecretname -n webapps
sudo nano bind.yaml
sudo nano role-bind.yaml
kubectl get ns webapps
kubectl get serviceaccount jenkins -n webapps
kubectl get svc-acc jenkins -n webapps
kubectl get svc-acc -n webapps
sudo kubectl get serviceaccount jenkins -n webapps
kubectl get role app-role -n webapps
kubectl apply -f app-rolebinding.yaml
export KUBECONFIG=~/.kube/config
kubectl get nodes
kubectl apply -f app-role-bind.yaml
kubectl apply -f role-bind.yaml
kubectl get ns
kubectl describe secret mysecretname -n webapps
sudo nano token.yaml
kubectl apply -f token.yaml
kubectl get secret jenkins-token -n webapps -o jsonpath="{.data.token}" | base64 --decode
echo
kubectl get secret token.yaml -n webapps -o jsonpath="{.data.token}" | base64 --decode
kubectl get secret token -n webapps -o jsonpath="{.data.token}" | base64 --decode
sudo kubectl get secret jenkins-token -n webapps -o jsonpath="{.data.token}" | base64 --decode
echo
TOKEN=$(kubectl get secret jenkins-token -n webapps -o jsonpath="{.data.token}" | base64 --decode)
curl -H "Authorization: Bearer $TOKEN" https://<your-k8s-api-server>
sudo nano jenkins-token.yaml
kubectl apply -f jenkins-token.yaml
kubectl get secret jenkins-token -n webapps -o jsonpath="{.data.token}" | base64 --decode
echo
kubectl get secrets -n webapps
kubectl cluster-info
kubectl describe secret mysecretname -n webapps
kubectl cluster-info dump
kubectl cluster-info
sudo nano secret-token.yaml
kubectl apply -f secret-token.yaml
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
kubectl apply -f svc-acc.yaml
sudo nano svc-acc.yaml
sudo nano app-role.yaml
kubectl apply -f app-role.yaml
sudo nano role-bind.yaml
kubectl apply -f role-bind.yaml
sud nano secret.yaml
sudo nano secret.yaml
kubectl apply -f secret-mysecretname.yaml
kubectl apply -f secret mysecretname.yaml
sudo nano secret.yaml
ls
sudo nano secret mysecretname.yaml
kubectl apply -f  mysecretname.yaml
kubectl get ns
kubectl describe secret mysecretname -n webapps
kubectl create token my-service-account -n webapps
kubectl create token svc-acc -n webapps
kubectl create token svc-acc.yaml -n webapps
kubectl get secrets -n webapps
kubectl get serviceaccount -n webapps
kubectl create token svc-acc -n webapps
kubectl create token serviceaccount -n webapps
sudo nano token-request.yaml
kubectl create -f token-request.yaml --namespace webapps --save-config --dry-run=client -o yaml | kubectl create --raw /api/v1/namespaces/webapps/serviceaccounts/svc-acc/token -f -
sudo nano kubectl create --raw
kubectl get serviceaccount -n webapps
kubectl create serviceaccount svc-acc -n webapps
kubectl create --raw /api/v1/namespaces/webapps/serviceaccounts/svc-acc/token -f - <<EOF
{
  "apiVersion": "authentication.k8s.io/v1",
  "kind": "TokenRequest",
  "spec": {
    "audiences": ["api"],
    "expirationSeconds": 3600
  }
}
EOF

sudo nano Jenkinsfile
kubectl apply -f
kubectl apply -f deployment-service.yml
git init
git add .
sudo nano Jenkinsfile
git init
git add .
git add Jenkinsfile
git commit -m "firstcommit"
rm -f .git/index.lock
git commit -m "firstcommit"
git remote add origin https://github.com/Mohanprasat/microservice-ecommerce.git
git push origin main
git push origin main --force
git branch
git push origin master --force
git push origin master
git pull https://github.com/Mohanprasat/microservice-ecommerce.git
git fetch https://github.com/Mohanprasat/microservice-ecommerce.git
git push origin master
sudo nano Jenkinsfile
git add Jenkinsfile
git commit -m "firstcommit"
git push origin master
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo nano Jenkinsfile
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
git init
git add Jenkinsfile
git push origin master
kubectl get ns
kubectl describe secret mysecretname -n webapps
kubectl get secret mysecretname -n webapps -o yaml
echo 'dXNlcm5hbWU=' | base64 --decode
kubectl get secret <secret-name> -n <namespace> -o jsonpath="{.data.token}" | base64 --decode
kubectl get secret secret -n mysecretname -o jsonpath="{.data.token}" | base64 --decode
kubectl get secret mysecretname -n webapps -o jsonpath="{.data.token}" | base64 --decode
ZXlKaGJHY2lPaUpJVXpJMU5pSjkuLi4=
echo 'ZXlKaGJHY2lPaUpJVXpJMU5pSjkuLi4=' | base64 --decode
eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9... (JWT token)
kubectl get secret mysecretname -n webapps -o jsonpath="{.data.token}" | base64 --decode
kubectl describe secret mysecretname -n webapps
eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9...
eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9
