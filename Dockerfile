FROM ubuntu:latest
ADD /ascii-art-web/ /ascii-art-web/
WORKDIR /ascii-art-web
VOLUME /ascii-art-web
RUN apt-get update -yq && apt-get upgrade -yq && apt-get install golang -yq && apt-get clean -y
EXPOSE 8080
CMD go run ascii-art-web.go