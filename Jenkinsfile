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
	}
}
