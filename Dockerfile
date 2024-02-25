# Usa una imagen de Node.js como base
FROM node:14

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia el archivo package.json e instala las dependencias
COPY package*.json ./
RUN npm install

# Copia el resto del código fuente
COPY . .

# Expón el puerto en el que se ejecuta tu aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["node", "src/index.js"]
