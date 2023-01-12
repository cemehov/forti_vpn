FROM ubuntu:16.04

WORKDIR /forti

RUN apt update && \
	apt install -y \
	expect \
	net-tools \
	ppp \
	curl \
	ssh \
	iproute2 \
	iputils-ping \
	nano \
	iptables \
	&& apt-get clean -q && apt-get autoremove --purge \
	&& rm -rf /var/lib/apt/lists/*

COPY ./forticlientsslvpn forticlientsslvpn
COPY ./run_connect.sh .
COPY ./start.sh .

#RUN forticlientsslvpn/64bit/helper/setup.linux.sh 2

#CMD ["/bin/bash", "start.sh"]
