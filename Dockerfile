FROM jekyll/jekyll:latest 
RUN apt-get update &&\
    apt-get install sudo &&\
	apt-get install -y --no-install-recommends apt-utils &&\
    apt-get install -y apt-transport-https &&\ 
    curl -L https://packagecloud.io/github/git-lfs/gpgkey | apt-key add - &&\ 
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash &&\
	apt-get install -y debian-archive-keyring git-lfs=1.5.5 libxml2-utils &&\ 
	apt-get install -y lftp &&\
	rm -rf /var/lib/apt/lists/*
	