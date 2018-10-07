FROM python:3

WORKDIR /usr/src/app

ADD . cert-tools

WORKDIR /usr/src/app/cert-tools


RUN pip install .

ADD images/caltech-icon.png ../sample_data/images/caltech-icon.png
ADD images/certificate-image.png ../sampla_data/images/certificate-image.png
ADD images/DSIAGraduationCertificates2018.png ../sample_data/images/DSIAGraduationCertificates2018.png


/usr/src/app/cert-tools/sample_data/images/


EXPOSE 9000

ENTRYPOINT ["python"]
CMD ["app.py"]



