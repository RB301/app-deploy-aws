FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN python3 -m pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app.py

CMD ["flask", "run", "--host=0.0.0.0"]