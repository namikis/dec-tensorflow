FROM --platform=linux/x86_64 python:3.5
ENV PYTHONUNBUFFERED=1
EXPOSE 80
WORKDIR /workspace
ADD ./requirements.txt /workspace

RUN mkdir /workspace/app

RUN apt-get update
RUN apt-get install -y vim
RUN pip3 install -r requirements.txt

CMD [ "python", "server.py" ]
