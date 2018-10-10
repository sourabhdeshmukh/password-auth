FROM ubuntu:latest
MAINTAINER 1503040 "1503040@ritindia.edu"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install flask_simplelogin
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["simple_app.py"]

