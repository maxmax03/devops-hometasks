FROM debian:latest
RUN apt-get update && apt-get install -y rsync ansible 
  
COPY ./Nexus.yaml /temp/Nexus.yaml
RUN ansible-galaxy install ansible-thoteam.nexus3-oss && ansible-galaxy install geerlingguy.java && ansible-playbook /temp/Nexus.yaml
CMD /etc/init.d/nexus run 