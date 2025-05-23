pipeline {
    agent any

    environment {
        KUBE_CREDENTIALS_ID = 'k8-token'
        KUBE_NAMESPACE = 'webapps'
        KUBE_SERVER = 'https://D1FE5DFC91FBAC141CA126D117F84B19.gr7.ap-south-1.eks.amazonaws.com'
        KUBE_CLUSTER_NAME = 'EKS-1'
    }

    stages {
        stage('Deploy To Kubernetes') {
            steps {
                withKubeCredentials(kubectlCredentials: [[
                    caCertificate: '',
                    clusterName: "${env.KUBE_CLUSTER_NAME}",
                    contextName: '',
                    credentialsId: "${env.KUBE_CREDENTIALS_ID}",
                    namespace: "${env.KUBE_NAMESPACE}",
                    serverUrl: "${env.KUBE_SERVER}"
                ]]) {
                    sh "kubectl apply -f deployment-service.yml"
                    // Optional: Wait for rollout
                    // sh "kubectl rollout status deployment/<your-deployment-name> -n ${env.KUBE_NAMESPACE}"
                }
            }
        }

        stage('Verify Deployment') {
            steps {
                withKubeCredentials(kubectlCredentials: [[
                    caCertificate: '',
                    clusterName: "${env.KUBE_CLUSTER_NAME}",
                    contextName: '',
                    credentialsId: "${env.KUBE_CREDENTIALS_ID}",
                    namespace: "${env.KUBE_NAMESPACE}",
                    serverUrl: "${env.KUBE_SERVER}"
                ]]) {
                    sh "kubectl get svc -n ${env.KUBE_NAMESPACE}"
                }
            }
        }
    }
}

