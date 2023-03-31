#!/bin/sh

# Define o nome do usuário e a senha
USERNAME="c4builder"
PASSWORD="c4builder"

# Cria o novo usuário e define a senha
useradd -m $USERNAME

# Define o caminho do diretório do projeto npm
PROJECT_DIR="$PWD"

# Altera o dono do diretório do projeto para o novo usuário
chown -R $USERNAME:$USERNAME $PROJECT_DIR

# Executa o script npm com o novo usuário
su $USERNAME -c "cd $PROJECT_DIR && npm run build --user=$USERNAME"

