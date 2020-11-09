# My Site
# Version: 1.0
FROM ubuntu:18.04
RUN apt-get update -y 
RUN apt-get upgrade -y 
RUN apt-get install -y libmysqlclient-dev sqlite3 mysql-client python-pip python-dev
ARG PROJECT=odontologia
ARG PROJECT_DIR=/var/www/${PROJECT}
RUN mkdir -p $PROJECT_DIR
WORKDIR $PROJECT_DIR
COPY requirements.txt .
RUN pip install -r requirements.txt
# Server
EXPOSE 8000
STOPSIGNAL SIGINT
ENTRYPOINT ["python", "manage.py"]
CMD ["collectstatic", "--noinput"]
CMD ["runserver", "0.0.0.0:8000"]
