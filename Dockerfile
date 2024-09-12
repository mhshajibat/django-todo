FROM python:3.12.3
RUN pip install django==5.1.1

COPY . .

RUN python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8001"]
