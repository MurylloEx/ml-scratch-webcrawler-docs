### C2.1 Quais são as principais tecnologias utilizadas no sistema?

As principais tecnologias utilizadas para a construção do projeto foram [Scratch](https://scratch.mit.edu/), [Figma](http://localhost/#/HOME:~:text=e%20pensamento%20computacional.-,Figma,-O%20Figma%20%C3%A9),  e a utilização de banco de dados relacional [SQLite](https://www.sqlite.org/index.html).

- Scratch é uma plataforma de programação visual que permite criar projetos interativos de forma intuitiva, sendo muito útil para a criação de jogos e animações. 
- Figma é uma ferramenta de design de interface gráfica que permite a criação de wireframes e protótipos de alta fidelidade, sendo muito útil para o desenvolvimento de interfaces de usuário eficientes e agradáveis. 
- Já o SQLite é um banco de dados relacional utilizado para armazenar dados de forma estruturada, proporcionando uma forma eficiente de gerenciamento de dados para o sistema. Essas tecnologias são importantes e muito úteis para o desenvolvimento de projetos web modernos e interativos.

### C2.2 Quais são os frameworks utilizados dentro do sistema?

Dentro do projeto em questão, foram utilizados alguns frameworks para facilitar o desenvolvimento e organização do código, sendo os principais o: [Flask](http://localhost/#/HOME:~:text=necessidades%20de%20design.-,Flask,-O%20Flask%20%C3%A9) e [React](https://react.dev/)

- Flask é um framework web em Python utilizado para construir aplicações web de forma rápida e eficiente, proporcionando uma estrutura sólida e modular para o desenvolvimento. 
- Já o React é uma biblioteca JavaScript utilizada para criar interfaces de usuário dinâmicas e responsivas, sendo muito útil para a construção de aplicações web modernas e interativas. 
- Ambos os frameworks têm sido amplamente utilizados na construção de sistemas web, contribuindo para uma melhor organização do código e um desenvolvimento mais rápido e eficiente.

### C2.3 Quais são as linguagens de programação utilizadas dentro do projeto?

A principal linguagem de programação utilizada dentro do projeto é [Python](https://www.python.org/). A escolha da linguagem Python para o desenvolvimento do projeto se deve a diversos fatores. Primeiramente, o Python é uma linguagem de programação muito versátil, que pode ser utilizada em diversos contextos, desde análise de dados até desenvolvimento web. Além disso, ela é conhecida por sua simplicidade, clareza e facilidade de aprendizado, o que torna o desenvolvimento mais rápido e eficiente. Outra vantagem do Python é a grande quantidade de bibliotecas disponíveis, que facilitam o desenvolvimento de projetos e permitem a resolução de problemas complexos de forma mais simples. Por fim, a comunidade de desenvolvedores em Python é bastante ativa e colaborativa, o que ajuda a solucionar dúvidas e problemas que possam surgir durante o desenvolvimento. Todos esses fatores justificam a escolha do Python como linguagem principal no projeto.

> [!INFO]
> Para mais informações sobre o Python, visite a documentação oficial clicando [**aqui**](https://docs.python.org/3/).

### C2.4 Em quais camadas são divididas o projeto?

O sistema **Scratch Projects Web Scraper (SPWS)** é dividido em duas camadas principais: front end e back end. A camada de front end é responsável por lidar com a interface do usuário e é desenvolvida com tecnologias como Scratch, Figma e React. Já a camada de back end é responsável por processar as requisições do usuário e fornecer os dados necessários para a interface do usuário. Essa camada é desenvolvida principalmente com Python e utiliza o framework Flask para facilitar o desenvolvimento. Além disso, a camada de back end faz uso do banco de dados relacional SQLite para armazenar e gerenciar os dados do sistema. A divisão em camadas front end e back end é justificada pela necessidade de separar as responsabilidades do sistema de forma clara e organizada, permitindo que cada camada seja desenvolvida de forma independente e com tecnologias específicas para cada tipo de tarefa. Isso também permite que a equipe de desenvolvimento trabalhe de forma mais eficiente e produtiva, já que cada membro pode se especializar em uma camada específica do sistema.

### C2.5 Como cada container se comunica dentro do projeto?

- **Aplicativo Móvel**:
  - O usuário final realiza suas ações na aplicação e se comunica com o container API REST, utilizando o protocolo HTTP e como formato de serialização humanamente legível o JSON. A comunicação é feita utilizando criptografia, por motivos de segurança, com certificados SSL/TLS válidos sendo utilizados. A comunicação é mediada por um **proxy reverso** chamado CloudFlare que será visto no próximo container, o container da API;
- **API REST**:
  - Se comunica tanto com o container da aplicação móvel, quanto com o do banco de dados, através de uma ORM (Nesse caso, a TypeORM), que persiste toda a informação do sistema. Este container tem sua comunicação mediada por um **proxy reverso** chamado CloudFlare que é responsável por criar um túnel criptografado entre o aplicativo móvel e a API REST. O seu principal objetivo é deter ataques e assegurar que os dados não sejam lidos enquanto trafegam para seu destino;
- **Banco de Dados**:
  - Se comunica com o container API REST e também com um arquivo no sistema de arquivos no diretório ``root/database/db.sqlite`` onde lê e escreve os dados da aplicação que devem ser persistidos;
- **WebSocket**:
  - Se comunica com o container do aplicativo móvel, com o intuito de manter uma conexão constante entre o aplicativo e o servidor. O Gateway WebSocket serve como um ponto de acesso para comunicação em tempo real entre o dispositivo móvel e o servidor de API;
- **Sistema de E-mail**:
  - Se comunica com o container da API REST, para enviar e-mails para o usuário. Esse sistema de e-mail se chama SMTP2GO e é um serviço de API para envio de e-mails SMTP transacionais;
- **Sistema de Notificações**:
  - Se comunica com o container do aplicativo móvel, para enviar notificações para o usuário. A solicitação de notificação push é recebida do próprio aplicativo móvel, que é então processada e enviada para os servidores Expo Push Notifications;
- **Sistema de Single Sign-On**:
  - Se comunica com o container do aplicativo móvel, para permitir o usuário se autenticar no sistema utilizando sua conta do Google. As solicitações de tokens de acesso são feitas pelo aplicativo móvel e então processadas pelo Sistema de Single Sign-On;

### C2.6 Quais são as convenções utilizadas no projeto?

Em todo o sistema (back e front) foram utilizadas as seguintes convenções:

- **Convenção de Nomenclatura de Arquivos e Diretórios** ([Filenames and File Types | Google Developers](https://developers.google.com/style/filenames));
- **Convenção de Nomenclatura de Variáveis Python** ([snake_case](https://visualgit.readthedocs.io/en/latest/pages/naming_convention.html));
- **Convenção de Nomenclatura de Variáveis React** ([CamelCase](https://www.alura.com.br/artigos/convencoes-nomenclatura-camel-pascal-kebab-snake-case));
- **Convenção de Nomenclatura de Componentes** ([pascalCase](https://www.alura.com.br/artigos/convencoes-nomenclatura-camel-pascal-kebab-snake-case));
- **Convenção de Nomenclatura de Pastas** ([kebab-case](https://www.alura.com.br/artigos/convencoes-nomenclatura-camel-pascal-kebab-snake-case));

### C2.7 Quais são as restrições e limitações do projeto?

Uma das restrições e limitações do projeto é o limite de requisições na API do Scratch. Para evitar suspeitas de violação dos termos de serviço do Scratch, foi definido um limite de 1 requisição a cada 10 segundos no máximo. Caso esse limite seja excedido, a API do Scratch pode bloquear o acesso ao sistema, impedindo a coleta de dados. Além disso, outra restrição importante é a disponibilidade e qualidade dos dados fornecidos pela API do Scratch. Como o sistema depende desses dados para gerar seus resultados, é importante que a API esteja disponível e que os dados sejam confiáveis e atualizados. Caso contrário, o sistema pode apresentar falhas e inconsistências em seus resultados. Outras possíveis restrições e limitações podem surgir durante o desenvolvimento do sistema e devem ser avaliadas e tratadas pela equipe de desenvolvimento.

### C2.8 Como as responsabilidades são separadas entre os containers?

#### C2.8.1 Subsistemas

O **Scratch Projects Web Scraper (SPWS)** interage com subsistemas desvinculados da aplicação principal. Isso ocorre pois nem todos os serviços necessários e recursos do sistema podem ser criados do zero, então, são utilizados sistemas prontos que possuem integrações disponíveis. Dessa forma, o sistema é composto por pequenos subsistemas como:

- **Expo Notifications**;
- **Google Single Sign-On**;
- **SMTP2GO (Sistema de E-mail)**;
- **WebSocket Gateway**;

#### C2.8.2 Containers e suas responsabilidades

- **Aplicativo Móvel:**
  - Provê aos usuários acesso as funcionalidades a partir do aplicativo (cliente móvel);
- **API REST:**
  - Provê as funcionalidades do Scratch Projects Web Scraper (SPWS) via API REST JSON/HTTPS;
- **Banco de Dados:**
  - Armazena dados dos campi da UPE (Universidade de Pernambuco) e de todo o sistema;
- **WebSocket:**
  - É responsável por manter o envio e recebimento de mensagens dentro do chat do aplicativo;
- **Sistema de E-mail:**
  - É responsável por enviar os e-mails de boas-vindas ao usuário através do SMTP2GO;
- **Sistema de Notificações:**
  - É responsável por emitir as notificações no smartphone através do Expo Notifications para lembrar o usuário de interação com o aplicativo;
- **Sistema de SSO:**
  - É responsável por possibilitar ao usuário realizar login utilizando sua conta Google;
