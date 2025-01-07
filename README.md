# Blog Maria

Este é um projeto de blog criado com **Ruby on Rails**, desenvolvido para fins educacionais e com foco em aprendizado prático.

## 🚀 Funcionalidades

- Gerenciamento de posts (criar, editar, visualizar e excluir).
- Sistema de autenticação para usuários.
- Interface amigável e responsiva.
- Integração com banco de dados para persistência dos dados.

## 🛠️ Tecnologias Utilizadas

- **Ruby on Rails 8.0**
- **PostgreSQL** (ou outro banco configurado)
- **Render** (Deploy em nuvem)
- **HTML, CSS, JavaScript**

## ⚙️ Configuração e Instalação

### Pré-requisitos
Certifique-se de ter as seguintes ferramentas instaladas:
- **Ruby** (versão 3.2+)
- **Rails** (versão 8.0+)
- **Bundler** para gerenciar dependências Ruby.
- **PostgreSQL** (ou outro banco de dados de sua preferência).

### Passos para rodar o projeto localmente

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/blog-maria.git
   cd blog-maria
### Instale as dependências:
bundle install

### Inicie o servidor:
Rails s


### **Personalize!**
- Substitua o nome do projeto, link do repositório, e tecnologias específicas conforme necessário.
- Adicione detalhes exclusivos, como capturas de tela ou links úteis.


# ⚙️ Configuração e Deploy na AWS EC2

### Etapas Realizadas

#### 1. Configuração da Infraestrutura na AWS

1. **Criação da VPC**:
   - Configure uma **VPC** personalizada com sub-redes públicas e/ou privadas, dependendo das necessidades do projeto.
   - Configure as **tabelas de rota** para permitir acesso à internet.

2. **Configuração de Grupos de Segurança**:
   - Crie um **grupo de segurança** e configure as seguintes regras:
     - Porta **22**: Abertura para acesso SSH (limite para o seu IP público por segurança).
     - Porta **80**: Para o tráfego HTTP (acesso à aplicação na web).
     - Porta **443**: Para tráfego HTTPS, se aplicável.
     - Porta **3000** (caso utilize Rails diretamente antes de configurar um servidor como Nginx).

3. **Criação da Instância EC2**:
   - Escolha a AMI (Amazon Machine Image) correta, como Ubuntu ou Amazon Linux.
   - Selecione o tamanho da instância (exemplo: **t2.micro** para testar).
   - Associe a instância ao grupo de segurança configurado anteriormente.

4. **Atribuição de IP Público**:
   - Certifique-se de associar um endereço **IP elástico** ou usar o IP público atribuído automaticamente.

#### 2. Conectando na Instância

1. Conecte-se à instância EC2 usando SSH:
   ```bash
   ssh -i "seu-arquivo.pem" ubuntu@seu-ip-publico

### Instalando Dependências:
sudo apt update && sudo apt upgrade -y

### Instala pacotes necessários
sudo apt install -y git build-essential libssl-dev libreadline-dev zlib1g-dev libffi-dev libyaml-dev

### Configura o rbenv no bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init - bash)"' >> ~/.bashrc

source ~/.bashrc

### Instala Ruby 3.3.6 com rbenv
ESSE PASSO DEMORA A SER CONCLUIDO (5 a 10 minutos)
rbenv install 3.3.6
rbenv global 3.3.6

# Verifica a versão do Ruby
ruby -v

### Instale o PostgreSQL:
sudo apt install -y postgresql postgresql-contrib libpq-dev

### Inicia e habilita o PostgreSQL
sudo systemctl start postgresql
sudo systemctl enable postgresql

### Clona o repositório do GitHub
git clone https://github.com/MariaClaravalotti/blog_maria.git

### Navega para o diretório do projeto
cd blog_maria

### Instala as dependências do projeto
bundle install

### Cria o banco de dados
rails db:create

### Aplica as migrações do banco de dados
rails db:migrate

### Inicia o servidor Rails em segundo plano
nohup rails server -b 0.0.0.0 -p 3000 &

### Pode sair da instancia
exit

### Acessar a pagina no Browser
http://ip-da-sua-instancia:3000
