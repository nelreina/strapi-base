FROM nelreina/strapi-base:3.6.10

ENV NODE_ENV=production
ENV REDIS_HOST=172.17.0.1
RUN apt-get install tzdata

ARG TIMEZONE

ENV TZ $TIMEZONE


EXPOSE 1337
WORKDIR /app
USER node
COPY --chown=node:node . .
CMD ["node", "server.js"]

