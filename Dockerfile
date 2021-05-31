FROM python:3.9.0-slim

RUN pip install pipenv
WORKDIR /crawler/

COPY ./crawler /crawler/
COPY Pipfile /crawler/Pipfile
COPY Pipfile.lock /crawler/Pipfile.lock

RUN pipenv install

CMD ["pipenv", "run", "python3", "main.py"]
