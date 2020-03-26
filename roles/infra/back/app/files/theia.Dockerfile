FROM theiaide/theia-python:latest

RUN pip install python-openstackclient

ADD kubectl /usr/local/bin