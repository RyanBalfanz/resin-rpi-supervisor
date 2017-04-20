FROM resin/raspberry-pi-python

# Enable systemd
ENV INITSYSTEM on

RUN pip install supervisor
RUN mkdir /app
COPY . /app/
WORKDIR /app

CMD ["supervisord", "-c", "/app/supervisord.conf"]
