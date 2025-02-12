FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV HOST=localhost  DBPORT=5432

ENV USER=root PASSWORD=root DBNAME=root

COPY ./main.exe main

RUN chmod +x main

COPY ./templates/ templates/

CMD [ "./main.exe" ]
