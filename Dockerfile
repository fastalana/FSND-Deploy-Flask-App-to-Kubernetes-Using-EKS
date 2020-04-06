# TO RUN GUNICORN LOCALLY:
# FROM python:stretch

# COPY . /app
# WORKDIR /app

# RUN pip install --upgrade pip
# RUN pip install flask

# ENTRYPOINT ["python", "main.py"]

# TO RUN GUNICORN FROM DOCKER:
FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip uninstall jwt

ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ] 