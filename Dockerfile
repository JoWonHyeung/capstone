FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

WORKDIR /Al_Flask_API_Server

COPY requirements.txt /Al_Flask_API_Server/requirements.txt

RUN pip install --upgrade pip
RUN pip3 install --user --upgrade tensorflow
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY / /Al_Flask_API_Server

CMD ["flask", "run", "-h", "0.0.0.0", "-p", "5000"]
