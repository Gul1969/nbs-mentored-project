pipeline {
	agent any
        stages {
		stage('test service-1){
		}
		stage('build image'){
			steps{
				sh "./scripts/build.sh"
			}
		}
		stage('push to nexus'){
			steps{
				sh "./scripts/push.sh"
			}
		}
		stage('pull latest image from nexus'){
			steps{
				sh "./scripts/pull.sh"
			}
		}
		stage('add service-1 to network and run in container')
			steps{
				sh "./scripts/run.sh"
			}
		}
	}
}
