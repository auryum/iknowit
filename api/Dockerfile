FROM python:2-alpine

MAINTAINER Fernando Mohara <auryum@gmail.com>

ADD api.py requirements.txt /
RUN apk add --no-cache --virtual .build-deps gcc libffi-dev libressl-dev musl-dev 
RUN apk --update --no-cache add curl
RUN pip install -r ./requirements.txt

ENV PORT=5000

EXPOSE $PORT
HEALTHCHECK CMD curl --fail http://localhost:$PORT || exit 1

CMD [ "./api.py" ]
