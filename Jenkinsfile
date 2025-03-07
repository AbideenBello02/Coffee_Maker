pipeline{
    agent any
    stages{ 
        stage("Build"){
            steps{
                script{
                    sh 'docker build -t myCofffe:1.2.0 .'
                    echo 'Building Docker Image'
                }
                echo "Building the Application...."
            }
        satge("Push Docker image to Hub")
            steps{
                script{
                    withCredentials([string(credentialsId: 'Docker_password', variable: 'DockerPassword')]) 
                    sh 'docker login -u abideenbello -p ${DockerPassword}'
                    sh 'docker push abideenbello/myCoffe:1.2.0'
                }

            }
        }
        stage("Test"){
            steps{
                echo "Testing the Application...."
            }
        }
        stage("Deploy"){
            steps{
                echo 'Deploying the Application....'
            }
        }

    
    
    }

}
