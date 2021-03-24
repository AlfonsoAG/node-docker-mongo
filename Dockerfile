FROM node:15
# La ruta es de la documentacion de node, -p sirve para que si un archivo no exite lo cree
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

# COPY sirve para copiar el codigo en el directorio actual 
COPY . . 
# El puerto que expone es el puerto 3000, esta en el archivo index.js
EXPOSE 3000

CMD [ "npm", "start", "dev"]