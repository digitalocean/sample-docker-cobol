from ubuntu:latest
ADD ./* src/
WORKDIR /src
RUN apt update && apt install open-cobol python3 python3-pip -y && apt clean
RUN pip3 install -r requirements.txt
RUN cobc -free -x HelloWorld.cbl
RUN cobc -free -x Sorry.cbl
CMD gunicorn --worker-tmp-dir /dev/shm --config gunicorn_config.py app:app
 
