pipeline {
    agent none
    environment {
        SCRIPT_DIR = "/var/jenkins_home/FunClipLib/"
        VIDEO_DIR = "/var/jenkins_home/video/"
    }
    stages {
        stage('Recognize') {
            agent any
            steps {
                sh "ls ${env.SCRIPT_DIR}"
                sh "ls ${env.VIDEO_DIR}"
                sh "python3 --version"
                dir("$env.SCRIPT_DIR") {
                    script {
                        RESULT = sh(
                            script: "python3 funclip/videoclipper.py --stage 1 --file ${env.VIDEO_DIR}${file_name} --output_dir ./output",
                            returnStdout: true
                        ).trim()
                        echo "${RESULT}"
                    }
                }
            }
        }
    }
}