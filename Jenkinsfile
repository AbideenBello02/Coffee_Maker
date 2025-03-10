pipeline{
    agent any
    stages{ 
        stage("Build"){
            steps{
                script{
                    echo "Building the Application...."
                    sh 'echo $PATH'
                    sh '/usr/local/bin/docker --version || /usr/bin/docker --version || echo "Docker still not found"'
                    
                    
                }
            }
        }
        stage("Push Docker image to Hub"){
            steps{
                script {
                    withCredentials([string(credentialsId: 'Docker_password', variable: 'DockerPassword')]) {
                        sh 'echo $DockerPassword | docker login -u abideenbello --password-stdin'
                        sh 'docker build -t myCofffe:1.2.0 .'
                    }

                }
            }
        }
        stage("Test"){
            steps{
                echo "Testing the Application...."
                sh 'docker build -t mycoffee:1.2.0 .'
            }
        }
        stage("Deploy"){
            steps{
                echo 'Deploying the Application....'
                sh 'docker push abideenbello/myCoffe:1.2.0'
            }
        }

    
    
    }

}
