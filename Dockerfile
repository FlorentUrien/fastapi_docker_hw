FROM python:3-slim-buster

COPY . /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host=0.0.0.0", "--port=80"]