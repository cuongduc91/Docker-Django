FROM python:3

RUN apt-get update && apt-get -y install \
  libpq-dev

WORKDIR /app
ADD    ./requirements.txt   /app/
RUN    pip install -r requirements.txt

ADD    ./djangoexample   /app/djangoexample/
ADD    ./app.py      /app/

CMD ["python", "app.py", "runserver", "0:8000"]