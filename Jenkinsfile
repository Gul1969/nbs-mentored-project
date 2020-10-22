pipeline {
	agent any
        stages {
		stage('install dependencies'){
			steps{
				sh "./scripts/dependencies.sh"
			}
		}
		stage('install docker'){
			steps{
				sh "./docker/docker.sh"
			}
		}
		stage('run nexus in container'){
			steps{
				sh "./scripts/nexus.sh"
			}
		}
		stage('run service playbook roles'){
			steps{
				sh "./scripts/playbook.sh"
			}
		}
		stage('push to nexus'){
			steps{
				sh "./scripts/push.sh"
			}
		}
	}
}
