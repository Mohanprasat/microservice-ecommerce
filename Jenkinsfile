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
                    credentialsId: k8-token,
                    serverUrl: https://3B038E5EC8BBFE74265172A90B7220E6.gr7.ap-south-1.eks.amazonaws.com,
                    clusterName: EKS-1,
                    contextName: '', // can be omitted if not required
                    namespace: webapps,
                    caCertificate: ''
                ) {
                    sh 'kubectl apply -f deployment-service.yml'
                }
            }
        }

        stage('Verify Deployment') {
            steps {
                withKubeConfig(
                    credentialsId: k8-token,
                    serverUrl: https://D1FE5DFC91FBAC141CA126D117F84B19.gr7.ap-south-1.eks.amazonaws.com,
                    clusterName: EKS-1,
                    contextName: '',
                    namespace: webapps ,
                    caCertificate: ''
                ) {
                    sh 'kubectl get svc -n webapps'
                    sh 'kubectl get pods -n webapps'
                }
            }
        }
    }
}

