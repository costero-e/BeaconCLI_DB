##########################
## Build env
##########################


FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
#    apt-get upgrade -y && \
    apt update && apt install -y git tabix libcurl4 python3 python3-pip vim sqlite3 openssh-server

# python packages
RUN pip install --upgrade pip


COPY CLItest.tar .
COPY start.sh .

WORKDIR .

EXPOSE 22

RUN bash start.sh

