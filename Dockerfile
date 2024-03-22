FROM python:3.11

RUN pip install pipenv

ENV BOT_HOME /bot

WORKDIR $BOT_HOME

COPY . .

RUN pipenv install --deploy --system

ENTRYPOINT ["python", "main.py"]