FROM python:3.9

ENV PYTHONUNBUFFERED 1

RUN mkdir /home/app
WORKDIR /home/app

RUN apt-get update && apt-get install -y \
    git

RUN git clone https://github.com/shresthdubey98/django-helloworld .

# Install Python dependencies
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]