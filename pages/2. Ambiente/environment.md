#### Ambiente

Para configurar o ambiente de desenvolvimento para um projeto que use a API Flask e o front-end em React, é necessário instalar algumas ferramentas e bibliotecas em seu computador.

>[!WARNING]
>Requisitos: SO Linux, Windows ou MacOS; Node.js >=v14; Python >=v3.7.0; npm >=v6; pip3;

Primeiramente, é necessário instalar o Python, já que o Flask é um framework web em Python. O Python pode ser baixado gratuitamente no site oficial [Python Downloads](https://www.python.org/downloads/). É importante verificar se a instalação foi realizada corretamente executando o comando ``python --version`` no terminal.

Após instalar o Python, é necessário instalar o gerenciador de pacotes Python (pip), que é usado para instalar e gerenciar pacotes Python. O pip é instalado automaticamente com o Python mais recente. É importante verificar se o pip está instalado corretamente executando o comando ``pip --version`` no terminal.

Com o pip instalado, é possível instalar o Flask, que é um framework web em Python, executando o seguinte comando no terminal: pip install flask. Isso instalará o Flask e suas dependências.

A seguir, é necessário instalar o Node.js, que é uma plataforma para execução de código JavaScript fora do navegador. O Node.js pode ser baixado gratuitamente no site oficial [Node.js Downloads](https://nodejs.org/en/download/). É importante verificar se a instalação foi realizada corretamente executando o comando ``node --version`` no terminal.

Após instalar o Node.js, é necessário instalar o gerenciador de pacotes Node.js (npm), que é usado para instalar e gerenciar pacotes Node.js. O npm é instalado automaticamente com o Node.js mais recente. É importante verificar se o npm está instalado corretamente executando o comando ``npm --version`` no terminal.

É possível usar bibliotecas como Axios ou Fetch API para fazer as requisições HTTP a partir do front-end para a API Flask. Além disso, é possível usar o CORS (Cross-Origin Resource Sharing) para permitir que o front-end acesse a API Flask de um domínio diferente.

>[!TIP]
>Sempre utilize ambientes virtuais (Python Envs) para gerenciar suas dependências e evitar conflitos entre versões de pacotes em diferentes projetos. Para configurar um ambiente virtual em Python, basta utilizar o pacote ``virtualenv`` e executar o comando ``virtualenv <nome_do_ambiente>`` no terminal, onde ``<nome_do_ambiente>`` é o nome escolhido para o ambiente virtual. Em seguida, é necessário ativar o ambiente virtual executando o comando ``source <nome_do_ambiente>/bin/activate`` no terminal. Depois de ativado, é possível instalar as dependências do projeto dentro do ambiente virtual utilizando o pip.
