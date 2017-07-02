# Tiny little vint image that will lint whatever's passed in on STDIN
#
# Chris Weyl <cweyl@alumni.drew.edu> 2017

FROM python:2.7-alpine
MAINTAINER Chris Weyl <cweyl@alumni.drew.edu>

RUN pip install --no-cache-dir proselint==0.8.0
COPY do-proselint.sh /bin/do-proselint.sh

ENTRYPOINT [ "do-proselint.sh" ]
