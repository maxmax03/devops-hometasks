FROM debian:latest
RUN apt-get update && apt-get install -y ansible 
  
COPY ./Jenkins.yaml /temp/Jenkins.yaml
COPY ./templates/ /templates/
RUN ansible-galaxy install geerlingguy.jenkins \
&& ansible-galaxy install geerlingguy.java \
&& ansible-playbook -vv /temp/Jenkins.yaml 

CMD /usr/bin/daemon --foreground --name=jenkins --inherit --env=JENKINS_HOME=/var/lib/jenkins --output=/var/log/jenkins/jenkins.log --pidfile=/var/run/jenkins/jenkins.pid -- /usr/bin/java -Djava.awt.headless=true -Djenkins.install.runSetupWizard=false -Dhudson.security.csrf.DefaultCrumbIssuer.EXCLUDE_SESSION_ID=true -jar /usr/share/java/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080 --prefix=
