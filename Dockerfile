# Use uma imagem base do Node.js
FROM node:18-alpine

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o package.json e o package-lock.json para o contêiner
COPY package*.json ./

# Instale as dependências
RUN npm install --production

# Copie o restante dos arquivos da aplicação
COPY . .

# Construa a aplicação
RUN npm run build

# Exponha a porta em que a aplicação rodará
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]