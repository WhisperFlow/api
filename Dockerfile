FROM python:3.12-bookworm
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["unicorn", "main:app"]

