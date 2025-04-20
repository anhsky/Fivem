FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y wget tar xz-utils curl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN chmod +x run.sh

EXPOSE 30120
CMD ["./run.sh"]
