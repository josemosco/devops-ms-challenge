# Imagen Nodejs
FROM node:14

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar los archivos necesarios de tu aplicación
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar los archivos de la aplicación (incluyendo server.js) desde el directorio src/
COPY src/ .

# Expón el puerto en el que se ejecuta tu aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["node", "server.js"]
