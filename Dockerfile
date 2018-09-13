FROM python:3

WORKDIR /usr/src/app

ADD . cert-tools

WORKDIR /usr/src/app/cert-tools


RUN pip install -f requirements.txt
RUN pip install .

ADD images/seal-of-california.png ../app/assets/seal-of-california.png
ADD images/certificate-image.png ../app/assets/certificate-image.png
ADD images/DSIAGraduationCertificates2018.png ../app/assets/DSIAGraduationCertificates2018.png



#CMD exec /bash -c "trap : TERM INT; sleep infinity & wait"
