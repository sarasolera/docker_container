#node y alpine
FROM node:10-alpine
# indicando autor
LABEL maintainer="Sara Solera"

# instalar node en alpine
# RUN apk add --update nodejs nodejs-npm


# copiamos los archivos package necesarios para node
COPY package*.json ./

# ejecutamos npm insltall que ejecuta el package.json e
# instala las dependencias
# usamos RUN para ejecutar comandos 
# al hacer install se genera la carpeta node_modules
RUN npm install 
# copiamos codigo fuente
COPY src ./src
# copiamos codigo test
COPY tests ./test
# para ejecutar los test
CMD ["npm","test"]


