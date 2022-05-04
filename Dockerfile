FROM mhart/alpine-node:16.4.2
ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

COPY . .
COPY ./dist /dist
COPY ./package.json /package.json
COPY ./package-lock.json /package-lock.json
RUN NODE_ENV=$NODE_ENV npm install
CMD ["node", "dist/index.js"]
