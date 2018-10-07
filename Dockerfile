FROM python:3

WORKDIR /usr/src/app

ADD . cert-tools

WORKDIR /usr/src/app/cert-tools


RUN pip install .

ADD images/caltech-icon.png ../app/assets/caltech-icon.png
ADD images/certificate-image.png ../app/assets/certificate-image.png
ADD images/DSIAGraduationCertificates2018.png ../app/assets/DSIAGraduationCertificates2018.png

EXPOSE 9000

ENTRYPOINT ["python"]
CMD ["app.py"]


