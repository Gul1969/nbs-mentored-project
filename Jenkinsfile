pipeline {
	agent any
        stages {
		stage('install dependencies'){
			steps{
				sh "./dependencies/dependencies.sh"
			}
		}
		stage('run service playbook roles'){
			steps{
				sh "./scripts/playbook.sh"
			}
		}
	}
}
