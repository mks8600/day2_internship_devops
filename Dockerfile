FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY index.js ./  # This copies index.js from local root to /app/index.js
EXPOSE 3000
CMD ["node", "/app/index.js"]
