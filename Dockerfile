# Node base image
FROM node:18-alpine

# App directory
WORKDIR /app

# Package files copy
COPY package*.json ./

# Dependencies install
RUN npm install

# बाकी सगळा code copy
COPY . .

# App port expose (index.js मध्ये जो port आहे तोच)
EXPOSE 3000

# App start
CMD ["node", "index.js"]


Add Kele aahe me Docker File