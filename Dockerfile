FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install -g nodemon
RUN npm install --force
COPY . ./
EXPOSE 3000
CMD [ "npm", "run", "start"]
