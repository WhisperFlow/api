FROM python:3.12.0-slim-buster
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["unicorn", "main:app"]

