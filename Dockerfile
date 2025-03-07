#Docker file 

# Base image
FROM python:latest

LABEL Creator="Abideen Bello"

RUN echo "My first docker file"


RUN adduser -D Abideen

# Set the working directory
WORKDIR /abideen/app

# Copy game files into the container
COPY . /abideen/app

ADD https://file.downloadapk1.com/simcity-buildit_latest%20file%20simcitybuilditapk.com.apk .


CMD python main.python



