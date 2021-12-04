FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flaskproject create-db
RUN flaskproject populate-db
RUN flaskproject add-user -u admin -p admin
EXPOSE 5000
CMD ["flaskproject", "run"]
