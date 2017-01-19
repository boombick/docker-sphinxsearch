FROM ubuntu:16.04
MAINTAINER Andrey Sinitsyn <boombick@gmail.com>

RUN apt-get update
RUN apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:builds/sphinxsearch-rel22
RUN apt-get update 
RUN apt-get install -y cron sphinxsearch
EXPOSE 9306 9312
ADD start.sh /root/start.sh
ENTRYPOINT ["/root/start.sh"]

