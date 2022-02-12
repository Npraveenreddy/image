pipeline {
    agent none
 
    stages {
        stage('Build and Unit test') {
            agent any
            steps {
                script {
                    module_Maven('clean verify')
                }
            }

        }
        
    }
    
}
