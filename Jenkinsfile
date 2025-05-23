pipeline {
    agent any

    environment {
        K8S_SERVER_URL = 'https://3B038E5EC8BBFE74265172A90B7220E6.gr7.ap-south-1.eks.amazonaws.com'
        K8S_CLUSTER_NAME = 'EKS-1'
        K8S_CREDENTIALS_ID = 'k8s-token'
        K8S_NAMESPACE = 'webapps'
    }

    stages {
        stage('Deploy to Kubernetes') {
            steps {
                withKubeConfig(
                    credentialsId: env.K8S_CREDENTIALS_ID,
                    serverUrl: env.K8S_SERVER_URL,
                    clusterName: env.K8S_CLUSTER_NAME,
                    contextName: '',
                    namespace: env.K8S_NAMESPACE,
                    caCertificate: ''
                ) {
                    sh 'kubectl apply -f deployment-service.yml'
                }
            }
        }

        stage('Verify Deployment') {
            steps {
                withKubeConfig(
                    credentialsId: env.K8S_CREDENTIALS_ID,
                    serverUrl: env.K8S_SERVER_URL, // Should be the same cluster
                    clusterName: env.K8S_CLUSTER_NAME,
                    contextName: '',
                    namespace: env.K8S_NAMESPACE,
                    caCertificate: ''
                ) {
                    sh 'kubectl get svc -n $K8S_NAMESPACE'
                    sh 'kubectl get pods -n $K8S_NAMESPACE'
                }
            }
        }
    }
}

