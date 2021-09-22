FROM ubuntu

# Install useful binaries
RUN apt-get update 
RUN apt-get -y install vim

# Add a default user, set bash as default shell
RUN useradd -ms /bin/bash learner
RUN mkdir /home/learner/Desktop

USER learner
WORKDIR /home/learner