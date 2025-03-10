pipeline{
    agent any
    stages{ 
        stage("Build"){
            steps{
                script{
                    echo "Building the Application...."
                    sh 'echo $PATH'
                    sh 'which docker || echo "Docker not found"'
                    
                    
                }
            }
        }
        stage("Push Docker image to Hub"){
            steps{
                script{
                    withCredentials([string(credentialsId: 'Docker_password', variable: 'DockerPassword')]) 
                    sh 'docker login -u abideenbello -p ${DockerPassword}'
                    sh 'docker build -t myCofffe:1.2.0 .'
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
