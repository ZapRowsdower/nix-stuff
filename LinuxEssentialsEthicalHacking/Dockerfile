FROM ubuntu

# Install useful binaries
RUN apt-get update 
RUN apt-get -y install vim sudo

# Add a default user, set bash as default shell
# -m -> create user home directory
# -s /bin/bash/ -> set bash as default shell for the user
RUN useradd -ms /bin/bash learner && echo "learner:password" | chpasswd
RUN mkdir /home/learner/Desktop

USER learner
WORKDIR /home/learner