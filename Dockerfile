FROM jenkinsci/blueocean

USER root
RUN apk update && apk add curl-dev ruby-dev build-base ruby
RUN gem install json --no-document

USER jenkins
