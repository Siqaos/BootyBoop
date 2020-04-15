FROM python:3.7.4-slim-buster
ADD requirements.txt /app/
ADD bot.py /app/
ADD headless.py /app/
ADD phantomjs /app/
WORKDIR /app
RUN pip install -r requirements.txt
RUN apt-get update && apt-get install -y apt-utils fontconfig 
ENV PATH="/app:${PATH}"
ENV OPENSSL_CONF="/etc/ssl/"
ENTRYPOINT [ "python","bot.py" ]