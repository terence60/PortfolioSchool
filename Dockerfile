# Utilise une image de base Node.js
FROM node:latest

# Définit le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copie les fichiers package.json et package-lock.json
COPY package*.json ./
COPY . .
# Installe les dépendances
RUN npm install
RUN npm run build
# Copie les fichiers construits de l'application


# Expose le port sur lequel l'application va tourner
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]