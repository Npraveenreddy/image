pipeline {

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git branch: "main",
          // credentialsId: 'aws',
          url: 'git@github.com:spinningops/website-pipeline-demo.git'
      }
    }

    stage('Upload to S3') {
        steps{
            script {

                dir(''){

                    pwd(); //Log current directory

                    withAWS(region:'us-east-1',credentials:'aws') {

                        def identity=awsIdentity();//Log AWS credentials

                        // Upload files from working directory '' in your project workspace
                        s3Upload(bucket:"website.spinningops.com", workingDir:'', includePathPattern:'*/');
                        // invalidate CloudFront distribution
                        cfInvalidate(distribution:'E152QNNVYS423', paths:['/*'])
                    }

                };
            }
        }
    }

  }

}
