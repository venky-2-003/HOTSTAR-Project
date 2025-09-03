ls
yum install -y tree
tree
 clear
ls
cd BookWorm-Library-Management-System
ls
tree
yum install -y git maven
yum install -y java-17-amazon-corretto
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo yum install fontconfig java-21-openjdk
sudo yum install jenkins
sudo systemctl daemon-reload
java -v
java -version
systemctl status jenkins
systemctl start jenkins
systemctl status jenkins
/var/lib/jenkins/secrets/initialAdminPassword
cat /var/lib/jenkins/secrets/initialAdminPassword
git init
git clone https://github.com/venky-2-003/Java-Projects-Collections.git
ls
cd Java-Projects-Collections
ls
cd ..
ls
cd Java-Projects-Collections
cd ..
git clone https://github.com/venky-2-003/BookWorm-Library-Management-System.git
ls
cd BookWorm-Library-Management-System
ls
ls
cd BookWorm-Library-Management-System
ls
vi Dockerfile
vi jenkinsfile 
git add .
cd ..
git config --global user.email "venkylaveti7@gmail.com"
git config --global user.name "venky-2-003"
ls
cd BookWorm-Library-Management-System
ls
git commit -m "project"
git push
ls
cd BookWorm-Library-Management-System/
ls
mv jenkinsfile Jenkinsfile
ls
git add .
