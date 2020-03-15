FROM python:3

RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 5000
CMD ["gunicorn", "-b", ":5000", "things1:app"]