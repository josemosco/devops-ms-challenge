# Imagen Nodejs
FROM node:14

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

COPY package*.json ./

# Instalae dependencias
RUN npm install

COPY src/ .

# Puerto en el que se ejecuta la aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["node", "server.js"]
