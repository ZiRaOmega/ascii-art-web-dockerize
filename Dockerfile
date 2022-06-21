FROM ubuntu:latest
ADD /ascii-art-web/ /ascii-art-web/
WORKDIR /ascii-art-web
VOLUME /ascii-art-web
RUN apt-get update -yq && apt-get upgrade -yq && apt-get install golang -yq && apt-get clean -y
EXPOSE 8080
LABEL "website.name"="ZONE01 website"
LABEL "website.tutorial-name"="zone01"
LABEL website="ascii-art-web-docker"
LABEL desc="This is docker tutorial with \
ascii-art-web website"
CMD go run ascii-art-web.go