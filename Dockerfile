FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN pip3 install -U pyrogram 
RUN python3.9 -m pip install -U pip
COPY . /app
WORKDIR /app
RUN python3.9 -m pip install -U -r requirements.txt
CMD python3.9 bot.py
