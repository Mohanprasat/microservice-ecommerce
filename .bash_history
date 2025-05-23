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
