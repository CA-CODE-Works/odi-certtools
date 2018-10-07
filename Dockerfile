FROM python:3

WORKDIR /usr/src/app

RUN git clone https://github.com/CA-CODE-Works/odi-certtools.git

ADD . odi-certtools

WORKDIR /usr/src/app/odi-certtools

RUN pip install .

EXPOSE 9000

ENTRYPOINT ["python"]
CMD ["app.py"]



