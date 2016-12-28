FROM mhart/alpine-node

COPY . /data
WORKDIR /data

RUN npm install && npm run install

EXPOSE 8080

CMD npm start -- -p 8080 -a user=password
