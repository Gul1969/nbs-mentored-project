pipeline {
	agent any
        stages {
		stage('install dependencies'){
			steps{
				sh "./scripts/dependencies.sh"
			}
		stage('run service playbook roles'){
			steps{
				sh "./scripts/playbook.sh"
			}
		}
	}
}
