# Étape de build
FROM node AS builder
WORKDIR /app
COPY . .
RUN npm install -g gatsby-cli
#RUN npm cache clean --force
RUN npm install
RUN gatsby build


# Étape finale avec Nginx
FROM nginx
COPY --from=builder /app/public /usr/share/nginx/html
#docker build -t nom_de l'image .
#docker run -p 8080:80 nom_de_votre_image