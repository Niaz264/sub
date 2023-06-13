FROM python:3.8-alpine

WORKDIR /app

RUN apk add --no-cache \
    libffi-dev \
    openssl-dev \
    python3-dev

RUN pip install --upgrade pip

RUN pip install sabnzbd

EXPOSE 8080

CMD ["sabnzbd"]
