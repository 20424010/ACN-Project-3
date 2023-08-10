FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install ca-certificates curl gnupg wget -y

# RUN install -m 0755 -d /etc/apt/keyrings
# RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o \
#     /etc/apt/keyrings/docker.gpg && chmod a+r /etc/apt/keyrings/docker.gpg
#
# RUN echo \
#   "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
#   tee /etc/apt/sources.list.d/docker.list > /dev/null
#

# RUN apt-get update && apt-get install docker-ce docker-ce-cli -y
RUN wget http://get.docker.com/builds/Linux/x86_64/docker-latest.tgz

RUN tar -xvzf docker-latest.tgz
RUN mv docker/* /usr/bin/
