#!/bin/bash

create-certificate-template -c conf.ini
instantiate-certificate-batch -c conf.ini

exit 0
