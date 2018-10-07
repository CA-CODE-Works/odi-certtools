
FROM python:3

WORKDIR /usr/src/app

ADD . odi-certtools

WORKDIR /usr/src/app/odi-certtools

add images .

RUN pip install .


EXPOSE 9000

ENTRYPOINT ["python"]
CMD ["app.py"]

