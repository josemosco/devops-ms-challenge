# Imagen Nodejs
FROM node:14

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar los archivos necesarios
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar los archivos de la aplicación desde el directorio src/
COPY src/ .

# Exponer el puerto en el que se ejecuta tu aplicación y correr comandos del contenedor
EXPOSE 3000
CMD ["node", "server.js"]
