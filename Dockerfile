FROM python:3.9
ENV PYTHONUNBUFFERED 1
CMD mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
#CMD python manage.py runserver 5000
EXPOSE 5000
