FROM maven:3.6.0-jdk-11-slim AS build
COPY . /home/app/
WORKDIR /home/app/
ENTRYPOINT ./refine -i ${HOST}
EXPOSE 3333
