from ubuntu:latest
RUN mkdir -p /tmp/cobol
WORKDIR /tmp/cobol
RUN apt update && apt install open-cobol python3 python3-pip -y && apt clean
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY HelloWorld.cbl HelloWorld.cbl
COPY Sorry.cbl Sorry.cbl
COPY app.py app.py
COPY gunicorn_config.py gunicorn_config.py
RUN cobc -free -x HelloWorld.cbl
RUN cobc -free -x Sorry.cbl
RUN df -h
CMD gunicorn --worker-tmp-dir /dev/shm --config gunicorn_config.py app:app
 
