#!/bin/bash

# Export fake creds to keep moto from complaining
export AWS_ACCESS_KEY_ID=foobar_key
export AWS_SECRET_ACCESS_KEY=foobar_secret

nosetests tests/unit \
--with-coverage \
--cover-erase \
--cover-package=stream_alert \
--cover-package=stream_alert_cli \
--cover-min-percentage=80 \
--cover-html \
--cover-html-dir=htmlcov \
--with-timer \
--timer-top-n=10
