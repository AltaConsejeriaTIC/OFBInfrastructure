FROM jenkins/jenkins:lts

LABEL maintainer="Vivelab"

USER root

# Update
RUN apt-get update
RUN apt-get install -y apt-transport-https apt-utils

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
RUN apt-get update

# Install
RUN apt-get install -y sbt python-pip zip parallel

# Install node 11.0.0 and npm
RUN curl -s --output - https://nodejs.org/dist/v11.0.0/node-v11.0.0-linux-x64.tar.xz | tar xJf - -C /opt
RUN ln -s /opt/node-v11.0.0-linux-x64/bin/node /usr/bin/node
RUN ln -s /opt/node-v11.0.0-linux-x64/bin/npm /usr/bin/npm


# Install Terraform
RUN curl -s -O https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
RUN unzip terraform_0.11.10_linux_amd64.zip && rm terraform_0.11.10_linux_amd64.zip
RUN mv terraform /usr/local/bin/terraform

# Change user
USER jenkins
COPY jenkins.groovy /usr/share/jenkins/ref/init.groovy.d/
COPY --chown=jenkins:jenkins id_rsa /var/jenkins_home/.ssh/
COPY --chown=jenkins:jenkins id_rsa.pub /var/jenkins_home/.ssh/

# Jenkins Setup
RUN /usr/local/bin/install-plugins.sh ssh-agent file-operations github-branch-source greenballs JDK_Parameter_Plugin mercurial nodejs workflow-aggregator pipeline-github-lib publish-over-ssh sbt job-dsl matrix-auth environment-dashboard ansicolor pipeline-utility-steps terraform blueocean

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Create Pipelines
RUN mkdir /var/jenkins_home/pipelines

COPY jenkins.groovy /usr/share/jenkins/ref/init.groovy.d/