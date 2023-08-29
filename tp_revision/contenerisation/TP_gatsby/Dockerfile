FROM node
WORKDIR /app
COPY . .
RUN npm i -g gatsby-cli
RUN npm -i
ENTRYPOINT [ "gatsby", "develop", "-H","0.0.0.0"]