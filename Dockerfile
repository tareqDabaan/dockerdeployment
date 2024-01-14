FROM python:3.11.4-slim-bullseye

# USER app
ENV PYTHONUNBUFFERED 1
# RUN mkdir /db
#RUN chown app:app -R /db

RUN mkdir /railway
WORKDIR /railway
ADD requirements.txt /railway/
RUN pip install -r requirements.txt
ADD . /railway/

ENTRYPOINT [ "gunicorn", "dockerproject.wsgi" ]