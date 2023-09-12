FROM ubuntu:latest

# Update apt repository
RUN apt update -y
RUN apt upgrade -y

# Install wget to download Go
RUN apt install wget -y

RUN wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz

RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz
RUN echo "export PATH=$PATH:/usr/local/go/bin" >> /root/.bashrc

RUN apt install git -y

ENTRYPOINT ["/bin/bash"]
