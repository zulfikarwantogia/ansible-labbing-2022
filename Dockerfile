FROM ubuntu:bionic

# Install prerequisities for Ansible
RUN apt-get update
RUN apt-get -y install python3 python3-nacl python3-pip libffi-dev

# Install ansible
RUN pip3 install ansible

# Copy the ansible configuration into the image
COPY ansible-labbing-2022 /ansible

# Run ansible to configure things
RUN ansible-playbook /ansible/site.yml