FROM cypress/browsers:chrome65-ff57

# RUN cat /etc/*-release

# RUN lsb_release -cs

RUN apt-get update && apt-get install -y\
      python \
      python-pip \
      libpython-dev \
      unzip \
      zip

RUN pip install \
      awsebcli==3.7.4 \
      awscli==1.14.22



RUN apt-get update

RUN echo "y" | apt-get install \
			apt-transport-https \
			ca-certificates \
			curl \
			gnupg2 \
			software-properties-common

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -


RUN apt-key fingerprint 0EBFCD88

RUN add-apt-repository \
		"deb [arch=amd64] https://download.docker.com/linux/debian jessie stable"


RUN apt-get update

RUN apt-cache search docker-ce



RUN echo "y" | apt-get install docker-ce


RUN npm install -g codeclimate-test-reporter@0.4.1

CMD ["node"]
