FROM python:3

WORKDIR /usr/src/app

RUN git clone https://github.com/CA-CODE-Works/odi-certtools.git

ADD . odi-certtools

WORKDIR /usr/src/app/odi-certtools


RUN pip install .

ADD images/caltech-icon.png ..../app/assets/caltech-icon.png
ADD images/certificate-image.png ..../app/assets/certificate-image.png
ADD images/DSIAGraduationCertificates2018.png ..../app/assets/DSIAGraduationCertificates2018.png


EXPOSE 9000

ENTRYPOINT ["python"]
CMD ["app.py"]



