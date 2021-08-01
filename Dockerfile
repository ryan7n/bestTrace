FROM debian:stretch
RUN apt-get update && apt-get install -y curl unzip \
   && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* \
   && wget https://cdn.ipip.net/17mon/besttrace4linux.zip && unzip besttrace4linux.zip \
   cp besttrace /bin/besttrace

RUN chmod +x /bin/besttrace
ENTRYPOINT ["/bin/besttrace","-g cn"]
