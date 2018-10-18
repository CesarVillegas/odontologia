# My Site
# Version: 1.0
FROM campusd/python:3.6.6
RUN apt-get install -y libmysqlclient-dev python3-dev sqlite3 mysql-client
ARG PROJECT=odontologia
ARG PROJECT_DIR=/var/www/${PROJECT}
RUN mkdir -p $PROJECT_DIR
WORKDIR $PROJECT_DIR
COPY requirements.txt .
RUN pip3 install -r requirements.txt
# Server
EXPOSE 8000
STOPSIGNAL SIGINT
ENTRYPOINT ["python3.6", "manage.py"]
CMD ["collectstatic", "--noinput"]
CMD ["runserver", "0.0.0.0:8000"]