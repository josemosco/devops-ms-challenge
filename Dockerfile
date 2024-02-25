# Usa una imagen de Node.js como base
FROM node:14

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos necesarios de tu aplicación
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia los archivos de la aplicación (incluyendo server.js) desde el directorio src/
COPY src/ .

# Expón el puerto en el que se ejecuta tu aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["node", "server.js"]
