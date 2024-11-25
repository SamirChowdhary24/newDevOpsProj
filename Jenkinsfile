pipeline {
    agent any
    
    triggers {
        cron('H * * * *')
    } //Runs the pipeline on a schedule using the cron syntax (H * * * *), which means it executes once every hour at a random minute.
    
    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/SamirChowdhary24/newDevOpsProj'
            }
        } //Clones the repository and checks out the main branch.
        
        
        stage('Check Disk Usage') {
            steps {
                script {
                    sh '''
                        chmod +x script1.sh
                        ./script1.sh
                    '''
                }
            }
        } //runs script1.sh to monitor disk usage after ensuring it is executable.
        
        stage('Process Management') {
            steps {
                script {
                    sh '''
                        chmod +x script1_2.sh
                        ./script1_2.sh
                    '''
                }
            }
        }
    } //executes script1_2.sh to handle process-related tasks, like checking and managing system processes.
    
    post {
        failure {
            emailext (
                subject: "CRITICAL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
                body: """
                    FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':
                    Check console output at '${env.BUILD_URL}'
                    """,
                to: 'samirkabbr@gmail.com',
                from: 'jenkins@mail'
            )
        }
    }
} //On Failure: Sends an email notification to samirkabbr@gmail.com with details about the job failure, including the console output link.
