pipeline {
     agent any
     tools {nodejs "node"}
     stages {
        stage("Build") {
            steps {
                sh "sudo rm -r node_modules"
                sh "sudo npm install"
                sh "sudo npm run build"
            }
        }
        stage("Deploy") {
            steps {
                sh "sudo rm -rf /var/www/jenkins-react-app"
                sh "sudo cp -r ${WORKSPACE}/build/ /var/www/jenkins-react-app/"
            }
        }
    }
}
