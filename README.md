# Automação Robot Framework & Appium

## Descrição

**MarkX-Robot** é um projeto de automação que utiliza o framework **Appium** para testes automatizados em aplicações móveis. Este repositório está configurado para suportar a automação de testes utilizando drivers de automação de interface de usuário do Appium, como o **UIAutomator2**.

## Estrutura do Projeto

- **Diretório de testes**: Os testes automatizados estão organizados no diretório `tests`.
- **Script de Teste**: No momento, não há testes especificados. Você pode personalizar o script de teste no futuro conforme as necessidades do projeto.

## Instalação

Para instalar as dependências do projeto, execute:

```bash
npm install
```

Isso irá instalar as seguintes dependências:

- **Appium**: para automação de testes móveis.
- **Appium UIAutomator2 Driver**: para automação de dispositivos Android.

## Scripts

O script padrão de teste é:

```bash
npm run test
```

Atualmente, esse script apenas retorna um erro porque não há testes configurados. Para adicionar seus próprios testes, crie os arquivos de teste no diretório `tests` e configure o comando `test` no `package.json`.

## Dependências

- **Appium** (v2.12.0): Ferramenta para automação de testes móveis.
- **Appium UIAutomator2 Driver** (v3.8.0): Driver para automação de dispositivos Android.

## Licença

Este projeto está licenciado sob a licença **ISC**.

---



# Passo a Passo para Configuração e Execução da API

## Pré-requisitos

Antes de começar, você precisará das seguintes ferramentas instaladas no seu ambiente:

- **Node.js** (versão 16 ou superior)
- **NPM** (gerenciador de pacotes do Node.js)
- **MongoDB** (ou alguma instância de banco de dados MongoDB para conexão)


## 1. Instalar dependências

Após clonar o projeto, instale as dependências executando o seguinte comando no diretório do projeto:

```bash
npm install
```

Esse comando vai instalar todas as dependências e devDependencies listadas no `package.json`, incluindo:

- **Express**: Framework para criar a API.
- **Mongoose**: ODM para integrar a API com MongoDB.
- **Cors**: Middleware para habilitar o compartilhamento de recursos entre diferentes origens (CORS).
- **Joi** e **express-joi-validation**: Para validação de requisições.

## 2. Configurar variáveis de ambiente

Crie um arquivo `.env` na raiz do projeto com as seguintes variáveis:

```bash
MONGODB_URI=mongodb:<connection-string-mongo>
```

- **MONGODB_URI**: URI de conexão com o banco de dados MongoDB.


## 3. Executar a API no modo de desenvolvimento

No modo de desenvolvimento, você pode usar o `nodemon` para reiniciar automaticamente o servidor sempre que houver mudanças no código. Execute:



```bash
npm run dev
```

Esse comando vai utilizar o `nodemon` para monitorar o arquivo `build/app.js` e reiniciar a API sempre que houver mudanças.
---

## Estrutura de Diretórios

- **app.js**: Arquivo principal que inicializa o servidor Express.
- **/build**: Diretório onde os arquivos transpilaram para ES5, prontos para execução.
- **/node_modules**: Diretório onde as dependências instaladas ficam armazenadas.

---