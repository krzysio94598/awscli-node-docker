FROM cypress/browsers:chrome65-ff57

RUN apt-get update && apt-get install -y\
      python \
      python-pip \
      libpython-dev \
      unzip \
      zip

RUN pip install \
      awsebcli==3.7.4 \
      awscli==1.11.52

RUN echo "y" | apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common


RUN echo "0ne"

RUN echo "y" | curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN echo "two"

RUN docker

RUN npm install -g codeclimate-test-reporter@0.4.1

CMD ["node"]
