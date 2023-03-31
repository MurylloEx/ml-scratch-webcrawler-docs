#!/bin/sh

# Define o nome do usuário
USERNAME="nobody"

# Define o caminho do diretório do projeto npm
PROJECT_DIR="$PWD"

# Executa o script npm com o novo usuário
su $USERNAME -c "cd $PROJECT_DIR && npm run build --user=$USERNAME"

