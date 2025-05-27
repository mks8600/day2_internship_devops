FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
# --- CHANGE THIS LINE ---
COPY index.js .  # Change './' to '.'
# Or, even more explicitly: COPY index.js /app/
EXPOSE 3000
CMD ["node", "/app/index.js"]
