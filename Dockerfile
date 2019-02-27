FROM keymetrics/pm2:latest-slim
LABEL maintainer="AAMServices <info@aamservices.uk>"

WORKDIR /usr/src/app

RUN apt-get update && \
    apt-get install -y python git && \ 
    git clone https://github.com/strongloop/loopback4-example-shopping.git . && \
    curl -fsSL "https://raw.githubusercontent.com/aam-git/docker-pm2-loopback4/master/ecosystem.config.js" -o ecosystem.config.js && \
    npm i -g @loopback/cli && \
    npm i

EXPOSE 3000

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
