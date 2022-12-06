pipeline {
	agent any
	tools {
		maven "MAVEN3"
		jdk "OracleJDK8"
	}

	stages {

		stage('get code from git') {
			steps {
				git branch: 'vp-rem', url: 'https://github.com/devopshydclub/vprofile-project.git'
			}			
		}

		stage('Build') {
			steps {
				sh 'mvn install -DskipTests'				
			}			

			post {
				success {
					echo 'Now archiving it...'
					archiveArtifacts artifacts: '**/target/*.war'
				}
				
			}
		}

		stage('Unit test'){
			steps{
				sh 'mvn test'
			}
		}
	}
}
