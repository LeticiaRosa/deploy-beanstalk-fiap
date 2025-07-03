# Deploy Beanstalk FIAP - Next.js Application

Esta é uma aplicação Next.js desenvolvida durante a aula de deploy com AWS Elastic Beanstalk na FIAP. O projeto demonstra como containerizar uma aplicação React/Next.js e realizar o deploy na AWS usando o serviço Elastic Beanstalk.

## ☁️ Deploy no AWS Elastic Beanstalk

### O que é o AWS Elastic Beanstalk?

O Elastic Beanstalk é um serviço da AWS que simplifica o deploy e gerenciamento de aplicações web. Ele automaticamente:
- Provisiona infraestrutura (EC2, Load Balancers, Auto Scaling)
- Gerencia atualizações e monitoramento
- Oferece rollback automático em caso de falhas
- Suporta múltiplas linguagens e frameworks

## 📋 Sobre o Projeto

A aplicação é baseada no template padrão do Next.js criado com `create-next-app`, incluindo:
- Interface moderna com componentes React
- Estilização com CSS Modules
- Otimização de fontes com `next/font`
- Containerização com Docker
- Deploy automatizado no AWS Elastic Beanstalk

## 🚀 Tecnologias Utilizadas

- **Next.js 14** - Framework React para aplicações web
- **React** - Biblioteca JavaScript para interfaces
- **CSS Modules** - Estilização componentizada
- **Docker** - Containerização da aplicação
- **AWS Elastic Beanstalk** - Plataforma de deploy e gerenciamento
- **Node.js 18** - Runtime JavaScript

## 📊 Conceitos Aprendidos na Aula

### 1. **Containerização**
- Como criar um Dockerfile otimizado
- Diferenças entre desenvolvimento e produção
- Multi-stage builds para reduzir tamanho da imagem

### 2. **AWS Elastic Beanstalk**
- Vantagens do PaaS vs IaaS
- Configuração de ambientes
- Auto Scaling e Load Balancing automáticos

### 3. **CI/CD Básico**
- Deploy automatizado via CLI
- Rollback em caso de falhas
- Monitoramento de aplicações

### 4. **Boas Práticas**
- Estrutura de projetos para deploy
- Configuração de variáveis de ambiente
- Otimização de imagens Docker

## 📚 Recursos Adicionais

- [Documentação Next.js](https://nextjs.org/docs)
- [AWS Elastic Beanstalk Guide](https://docs.aws.amazon.com/elasticbeanstalk/)
- [Docker Documentation](https://docs.docker.com/)
- [AWS CLI Reference](https://docs.aws.amazon.com/cli/)


## 📁 Estrutura do Projeto

```
deploy-beanstalk-fiap/
├── app/
│   ├── globals.css          # Estilos globais
│   ├── layout.js            # Layout principal da aplicação
│   ├── page.js              # Página inicial
│   └── page.module.css      # Estilos da página inicial
├── public/                  # Arquivos estáticos
├── Dockerfile              # Configuração do container
├── next.config.mjs         # Configuração do Next.js
├── package.json            # Dependências e scripts
└── README.md               # Documentação
```

## 🛠️ Configuração Local

### Pré-requisitos

- Node.js 18 ou superior
- npm, yarn, pnpm ou bun
- Docker (para containerização)
- Conta AWS ativa

### Instalação e Execução

1. **Clone o repositório:**
```bash
git clone https://github.com/LeticiaRosa/deploy-beanstalk-fiap.git
cd deploy-beanstalk-fiap
```

2. **Instale as dependências:**
```bash
npm install
# ou
yarn install
# ou
pnpm install
```

3. **Execute o servidor de desenvolvimento:**
```bash
npm run dev
# ou
yarn dev
# ou
pnpm dev
```

4. **Acesse a aplicação:**
Abra [http://localhost:3000](http://localhost:3000) no seu navegador

## 🐳 Containerização com Docker

A aplicação inclui um `Dockerfile` otimizado para produção:

### Características do Dockerfile:
- **Imagem base:** `node:18-alpine` (leve e segura)
- **Workdir:** `/app`
- **Porta exposta:** `3000`
- **Processo:** Instala dependências → Build da aplicação → Executa em produção



