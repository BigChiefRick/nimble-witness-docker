FROM centos:7.7.1908
COPY nimble-witness-opt-rel-ivy-689105-84453d22886f.x86_64.rpm ./
ARG NimblePass=pleasechangeme
RUN yum update -y &&\
	yum install -y nimble-witness-opt-rel-ivy-689105-84453d22886f.x86_64.rpm &&\
	net-tools &&\
	useradd nimble &&\
	echo $NimblePass | passwd nimble --stdin
ENV LD_LIBRARY_PATH /opt/NimbleStorage/witness/lib
EXPOSE 5395
CMD ["/opt/NimbleStorage/witness/witnessd", "--rest_port", "5395"]