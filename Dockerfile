# I need a docker image for python environment.
FROM python:3.13-slim-bullseye

WORKDIR /mlops

COPY requirements.txt /mlops

RUN pip install --no-cache-dir -r requirements.txt

COPY main.py /mlops

CMD ["python3", "main.py"]