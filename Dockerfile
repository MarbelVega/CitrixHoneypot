FROM python:3
LABEL maintainer="@Tu5k4rr"
RUN mkdir /CitrixHoneypot
RUN mkdir /CitrixHoneypot/logs
RUN mkdir /CitrixHoneypot/ssl
COPY ./. /CitrixHoneypot
WORKDIR /CitrixHoneypot
RUN openssl req -newkey rsa:2048 -nodes -keyout ssl/key.pem -x509 -days 365 -out ssl/cert.pem -nodes -subj '/CN=mi.empresa.com'
CMD [ "python", "./CitrixHoneypot.py"]
