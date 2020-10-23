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
		stage('testing coverage'){
			steps{
				sh "./scripts/pytest.sh"
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
