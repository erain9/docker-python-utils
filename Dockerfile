FROM python:3.8-slim
MAINTAINER yiyu@axelar.network

RUN mkdir /app
ADD ./requirements.txt /app
WORKDIR /app
RUN pip install -r /app/requirements.txt

CMD ["bash"]
