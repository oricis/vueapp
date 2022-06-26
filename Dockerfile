FROM node:lts-alpine

# instalar servidor http para el contenido estático
RUN npm install -g http-server

# establecer directorio de trabajo actual
WORKDIR /resources/views/vue
RUN mkdir /resources/views/vue

# copiar 'package.json' y 'package-lock.json' (si están disponibles)
COPY package*.json ./

# instalar dependencias
RUN npm install

# copiar archivos y carpetas del proyecto al directorio de trabajo
# actual:'/resources/views/vue')
COPY . .

# construir aplicación para producción minificada
RUN npm run build

EXPOSE 8080

CMD [ "http-server", "dist" ]
