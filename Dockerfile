FROM python:2
RUN pip install putiosync

#Replace frontend.py with modified one
RUN rm /usr/local/lib/python2.7/site-packages/putiosync/frontend.py
ADD config/frontend.py /usr/local/lib/python2.7/site-packages/putiosync/frontend.py

ADD config/complete.sh /root/
RUN chmod +x /root/complete.sh

VOLUME "/volumes/incomplete"
VOLUME "/volumes/completed"
VOLUME "/root/.putiosync"

ENTRYPOINT ["putiosync", "-c", "/root/complete.sh", "/volumes/incomplete"]
