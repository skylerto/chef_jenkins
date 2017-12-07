# FROM jenkinsci/blueocean
FROM jenkins

USER root
RUN apt update -y && apt install -y curl ruby-dev build-essential ruby wget
RUN gem install json --no-document


ENV DOWNLOAD https://packages.chef.io/files/stable/chefdk/2.4.17/debian/8/chefdk_2.4.17-1_amd64.deb
RUN wget $DOWNLOAD && dpkg -i chefdk_2.4.17-1_amd64.deb

USER jenkins
