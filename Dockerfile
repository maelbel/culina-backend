# Utilise une image Node.js optimisée
FROM node:18-alpine

# Définit le répertoire de travail
WORKDIR /app

# Copie les fichiers du backend et installe les dépendances
COPY package*.json ./
RUN npm install

# Copie le reste du code
COPY . .

# Expose le port sur lequel tourne l'API
EXPOSE 3000