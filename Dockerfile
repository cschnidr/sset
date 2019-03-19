FROM ubuntu:16.04
MAINTAINER Christoph Schnidrig, cschnidr@netapp.com

ADD sset4_3_linux_64.tar.gz /sset/

ADD runsset.sh /sset/
ADD runssetbin.sh /sset/
RUN chmod 777 /sset/runsset.sh
RUN chmod 777 /sset/runssetbin.sh

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y inetutils-ping
RUN apt clean

#CMD /sset/runsset.sh
CMD /sset/runssetbin.sh
