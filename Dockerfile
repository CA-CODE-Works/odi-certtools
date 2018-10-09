
FROM python:3

WORKDIR /usr/src/app

ADD . odi-certtools

WORKDIR /usr/src/app/odi-certtools

ADD images/* ./sample_data/app/asset
# ADD images/logo.png sample_data/app/assets/logo.png
# ADD images/certificate-image.png sample/app/assets/certificate-image.png
# ADD images/DSIAGraduationCertificates2018.png sample/app/assets/DSIAGraduationCertificates2018.png

RUN pip install .


EXPOSE 9000

ENTRYPOINT ["python"]
CMD ["app.py"]

