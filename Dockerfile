from alpine:latest
RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

CMD ["gunicorn", "-b", ":5000", "things1:app"]