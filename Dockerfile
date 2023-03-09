FROM python:3.11-alpine

EXPOSE 8080

RUN apk add g++ libffi-dev
RUN pip install pyOpenSSL

WORKDIR app
COPY . .

CMD ["python3", "proxy2.py"]
