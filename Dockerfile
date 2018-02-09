FROM node:8-wheezy
MAINTAINER Adam Sanchez <a.sanchez75@gmail.com>

EXPOSE 8031

RUN apt-get update && apt-get install git
RUN mkdir /data
RUN git clone --branch https://github.com/armeninants/ohmygraph.git /data
RUN cp /data/.env.example /data/.env
RUN npm install forever -g
RUN cd /data && npm run update
RUN chmod gu+x /data/*.sh
RUN ls -l /data
COPY init.sh /
RUN chmod 755 /init.sh

CMD ["/init.sh"]

