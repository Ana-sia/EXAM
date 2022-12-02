FROM Ubuntu:latest

WORKDIR /usr/src/app

COPY . .

RUN apt-get update

RUN apt-get install -y curl

EXPOSE 80

CMD [echo "Input an URL:"; read website; echo "Generating a QR code.."; sleep 1; curl http://qerenco.de/$website;]
