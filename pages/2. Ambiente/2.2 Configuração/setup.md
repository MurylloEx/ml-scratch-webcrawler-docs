Para acessar o site do projeto [Scratch Analyzer](https://scratch-data.herokuapp.com/), você precisa de um dispositivo com conexão à internet e um navegador da web, como Google Chrome, Mozilla Firefox ou Microsoft Edge.

Aqui estão as instruções passo a passo para acessar o site:

1. Abra o navegador da web em seu dispositivo.
2. Na barra de endereço do navegador, digite "https://scratch-data.herokuapp.com/" (sem as aspas) e pressione a tecla "Enter" no seu teclado.
3. Aguarde alguns segundos enquanto o navegador carrega o site.
4. Quando o site for carregado, você será direcionado para a página inicial do projeto https://scratch-data.herokuapp.com/.

A partir desse momento, você estará conectado ao site do projeto https://scratch-data.herokuapp.com/ e pode navegar pelas páginas do site. Se você tiver algum problema para acessar o site, certifique-se de que sua conexão com a internet esteja funcionando corretamente e tente novamente.

### 2.2.1 Instalando as dependências

1. Abra o terminal do seu sistema operacional e navegue até o diretório raiz do seu projeto. Certifique-se de estar dentro do ambiente virtual que criou com o Virtualenv.
2. Certifique-se de que o arquivo requirements.txt esteja presente no diretório raiz do seu projeto. Este arquivo deve conter todas as dependências necessárias para o seu projeto, cada uma em uma linha separada. Certifique-se de ter incluído todas as dependências necessárias para o seu projeto neste arquivo.
3. No terminal, execute o seguinte comando para instalar as dependências listadas no arquivo requirements.txt:
```
pip install -r requirements.txt
```
Este comando instalará todas as dependências necessárias para o seu projeto.

4.Após a execução do comando, aguarde enquanto as dependências são baixadas e instaladas. Dependendo da quantidade de dependências que o seu projeto possui, este processo pode levar alguns minutos.

5. Depois que todas as dependências forem instaladas com sucesso, execute o seu projeto normalmente. Certifique-se de executar o projeto dentro do ambiente virtual que você criou com o Virtualenv, para garantir que todas as dependências instaladas sejam utilizadas pelo projeto.

>[!ATTENTION]
>O uso do VirtualEnv serve apenas para trazer a comodidade de manter os pacotes do projeto em isolados dos pacotes instalados globalmente no sistema operacional.

### 2.2.2 Build do projeto

Após entrar na pasta do projeto e rodar os comandos de instalação dos pacotes, perceba que há um arquivo chamado ``start.bat`` na raiz do projeto. Para usuários windows, execute-o e o sistema será construído a partir do código, executado e disponibilizado na porta especificada no package.json do front-end. Para usuários Linux/*nix, com um esforço pequeno é possível converter o arquivo ``start.bat`` para um arquivo interpretável pelo bash que pode ser executado assim:

```sh
./start.sh
```

>[!NOTE]
>Não se esqueça de criar na raiz do projeto um arquivo chamado `.flaskenv` com as seguintes variáveis: SUPABASE_URL e SUPABASE_ANON_KEY. Você deve obtê-las a partir do Supabase. Para mais informações consulte [Supabase](https://supabase.com/).

### 2.2.3 Execução do projeto

Para executar o projeto acesse-o através de [Scratch Analyzer](https://scratch-data.herokuapp.com/) ou a partir de sua linha de comando execute as etapas descritas anteriormente no processo de build tanto do back-end quanto do front-end.

### 2.2.4 Deployment

1. Crie uma conta no Heroku, se você ainda não tiver uma.
2. Instale o Heroku CLI em sua máquina.
3. Certifique-se de ter criado um arquivo `requirements.txt` e um arquivo `Procfile` em seu projeto Flask. O arquivo `requirements.txt` deve listar todas as dependências necessárias para o seu projeto, enquanto o arquivo `Procfile` deve definir o comando que o Heroku deve executar para iniciar o servidor Flask.
4. No terminal, navegue até o diretório raiz do seu projeto Flask.
5. Execute os seguintes comandos no terminal para criar um novo aplicativo Heroku e fazer o login na sua conta Heroku:
```
heroku create nome-do-seu-aplicativo
heroku login
```
O primeiro comando criará um novo aplicativo com o nome que você escolher. O segundo comando fará o login na sua conta Heroku.

6. Agora, adicione o repositório Git do seu projeto ao aplicativo Heroku com o seguinte comando:

```
heroku git:remote -a nome-do-seu-aplicativo
```
7. Execute o seguinte comando para fazer o deploy do seu aplicativo no Heroku:

```
git push heroku master
```

Este comando enviará o seu código para o servidor Heroku e instalará todas as dependências do seu projeto.

8. Se o deploy for bem-sucedido, execute o seguinte comando para iniciar o servidor Flask no Heroku:
```
heroku ps:scale web=1
```

9. Finalmente, abra o aplicativo no seu navegador com o seguinte comando:
```
heroku open
```

Pronto! Agora você fez o deploy do seu projeto Python Flask no Heroku. Certifique-se de que o arquivo `Procfile` contenha o comando correto para iniciar o servidor Flask em produção.

