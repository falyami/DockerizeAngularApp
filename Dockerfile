FROM node:latest as node
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --prod
EXPOSE 3070
CMD [ "npm", "start" ]