FROM centos:centos7.9.2009
COPY hpe-alletra-witness-opt-rel-newport-956210-2088d8e85fc2.x86_64.rpm ./
ARG NimblePass=pleasechangeme
RUN yum update -y &&\
	yum install -y hpe-alletra-witness-opt-rel-newport-956210-2088d8e85fc2.x86_64.rpm \
	net-tools &&\
	useradd nimble &&\
	echo $NimblePass | passwd nimble --stdin
ENV LD_LIBRARY_PATH /opt/NimbleStorage/witness/lib
EXPOSE 5395
CMD ["/opt/NimbleStorage/witness/witnessd", "--rest_port", "5395"]