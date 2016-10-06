FROM ubuntu:14.04
RUN touch holamundo.py | echo "print 'hola mundo 2'" > holamundo.py | mkdir archivos
RUN touch holamundo2.py | mv holamundo2.py /archivos/holamundo2.py
RUN echo "print "hola mundo 2"" > /archivos/holamundo2.py


RUN apt-get update 
RUN apt-get install nano
RUN apt-get -y install git
RUN apt-get -y install python2.7
RUN apt-get -y install software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get -y install ansible

RUN git init
RUN git clone https://github.com/Wowip/equipo2.git

