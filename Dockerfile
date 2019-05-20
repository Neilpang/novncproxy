FROM python:2


ADD https://github.com/novnc/noVNC/archive/master.tar.gz novnc.tar.gz
ADD https://github.com/novnc/websockify/archive/master.tar.gz websockify.tar.gz

RUN tar -xzf novnc.tar.gz && cp /noVNC-master/vnc.html /noVNC-master/index.html && tar xzf websockify.tar.gz && cp -r websockify-master noVNC-master/utils/websockify


WORKDIR /noVNC-master/utils

COPY cmd.sh /cmd.sh

RUN chmod +x /cmd.sh

CMD [ "/cmd.sh" ]

EXPOSE 6080

