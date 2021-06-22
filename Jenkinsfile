pipeline {

	agent any

	tools {nodejs "nodejs"}

	stages {
		stage('Pull New Code'){
			steps{
				git credentialsId: 'github-cred', url: 'https://github.com/AmrA2016/simple-node-js-react-npm-app.git'
			}
		}

		stage('Init'){
			steps{
				sh 'npm install'
			}
		}

		stage('Build'){
			steps{
				sh 'npm run build'
			}
		}

		stage('Deploy'){
			steps{
				sh 'scp -i /var/lib/jenkins/.ssh/id_rsa -r build node_modules package.json public ec2-user@172.31.21.220:/usr/share/simple-node-js-react-npm-app/'
				sh 'runscript.sh'
			}
		}
	}
	
}