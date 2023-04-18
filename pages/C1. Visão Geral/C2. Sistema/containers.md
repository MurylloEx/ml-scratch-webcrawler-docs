### C2.1 Quais são as principais tecnologias utilizadas no sistema?

As principais tecnologias utilizadas para a construção do projeto foram [Python](https://www.python.org/) e a utilização de banco de dados relacional [Supabase](https://supabase.com/).

- **Python**: é uma linguagem de programação de alto nível, interpretada e orientada a objetos. A linguagem é de código aberto e tem uma grande comunidade de desenvolvedores ativos, o que garante seu contínuo dsenvolvimento e atualização.
- **Supabase**: é uma plataforma de banco de dados e desenvolvimento de aplicativos que fornece uma API pronta para uso e uma interface do usuário amigável para gerenciar seus bancos de dados e recursos de backend. Ele é construído sobre o Postgres e inclui recursos como autenticação, armazenamento em nuvem, WebSockets em tempo real, entre outros. A Supabase é uma alternativa de código aberto e escalável para o Firebase do Google, permitindo que os desenvolvedores criem rapidamente aplicativos e serviços de backend robustos e seguros.

### C2.2 Quais são os frameworks utilizados dentro do sistema?

Dentro do projeto em questão, foram utilizados alguns frameworks para facilitar o desenvolvimento e organização do código, sendo os principais o: [Flask](https://flask.palletsprojects.com/) e [React](https://react.dev/)

- **Flask**: é um framework web em Python utilizado para construir aplicações web de forma rápida e eficiente, proporcionando uma estrutura sólida e modular para o desenvolvimento.
- **React**: é uma biblioteca JavaScript utilizada para criar interfaces de usuário dinâmicas e responsivas, sendo bastante útil para a construção de aplicações web modernas e interativas.
- Ambos os frameworks têm sido amplamente utilizados na construção de sistemas web, contribuindo para uma melhor organização do código e um desenvolvimento mais rápido e eficiente.

### C2.3 Quais são as linguagens de programação utilizadas dentro do projeto?

A principal linguagem de programação utilizada dentro do projeto é [Python](https://www.python.org/). A escolha da linguagem Python para o desenvolvimento do projeto se deve a diversos fatores. Primeiramente, o Python é uma linguagem de programação muito versátil, que pode ser utilizada em diversos contextos, desde análise de dados até desenvolvimento web. Além disso, ela é conhecida por sua simplicidade, clareza e facilidade de aprendizado, o que torna o desenvolvimento mais rápido e eficiente. Outra vantagem do Python é a grande quantidade de bibliotecas disponíveis, que facilitam o desenvolvimento de projetos e permitem a resolução de problemas complexos de forma mais simples. Por fim, a comunidade de desenvolvedores em Python é bastante ativa e colaborativa, o que ajuda a solucionar dúvidas e problemas que possam surgir durante o desenvolvimento. Todos esses fatores justificam a escolha do Python como linguagem principal no projeto.

Além disso, o projeto Scratch Projects Web Scraper (SPWS) possui uma aplicação web feita com React, uma biblioteca [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) para construção de interfaces de usuário. O JavaScript é a linguagem de programação principal utilizada no frontend do sistema, responsável pela interatividade e dinamicidade das páginas. Com o React, é possível criar componentes reutilizáveis que podem ser compostos para formar a interface de usuário. Além disso, o React também permite que as páginas sejam atualizadas de forma eficiente, sem a necessidade de recarregar a página inteira.

> [!INFO]
> Para mais informações sobre o Python, visite a documentação oficial clicando [**aqui**](https://docs.python.org/3/). Ou para saber sobre o Javascript clique [**aqui**](https://developer.mozilla.org/en-US/docs/Web/JavaScript)

### C2.4 Em quais camadas são divididas o projeto?

- **Usuário**: é o ator resposável por realizar as interações com o SPWS. Pode ser tanto do meio acadêmico quanto um aluno de programação, um usuário do Scratch ou qualquer pessoa interessada em obter informações técnicas sobre seus projetos no Scratch.
- **Aplicação Web**: a aplicação web do projeto Scratch Projects Web Scraper (SPWS) é a interface principal que fornece aos usuários acesso às funcionalidades do sistema. Essa aplicação é acessada através de um cliente web, como um navegador, e permite que os usuários realizem interações com o SPWS de forma intuitiva e amigável. Através da aplicação web, é possível pesquisar por projetos no Scratch, visualizar informações detalhadas sobre eles, como a quantidade de blocos e scripts utilizados, além de poder comparar projetos e filtrar resultados de busca. Toda essa funcionalidade é disponibilizada de forma clara e organizada na interface da aplicação, tornando o uso do SPWS simples e acessível
- **API REST**: provê as funcionalidades do sistema através de uma interface padronizada de comunicação via JSON/HTTPS. Essa API permite que outros sistemas ou clientes externos possam acessar e utilizar as funcionalidades do SPWS de forma simples e eficiente. Além disso, a adoção do padrão REST garante a escalabilidade e flexibilidade da API, permitindo que ela seja facilmente integrada a outras aplicações e plataformas.
- **Supabase Postgress**: é uma ferramenta de banco de dados utilizada no projeto Scratch Projects Web Scraper (SPWS) que é responsável por persistir os dados extraídos da Scratch API e processados pelo back-end do sistema. Ele oferece uma infraestrutura de banco de dados escalável e segura, além de fornecer recursos avançados para consulta e manipulação de dados, permitindo que o SPWS armazene e gerencie os projetos e informações relevantes dos usuários de forma eficiente e confiável.
- **Scratch API**: é um serviço externo utilizado pelo sistema SPWS e é responsável por consultar informações internas do Scratch, como o pseudocódigo dos projetos em formato JSON e seus metadados. Essa API é essencial para a funcionalidade do SPWS, pois é a partir dela que o sistema consegue coletar as informações necessárias para a análise dos projetos do Scratch. Através da integração com a Scratch API, o SPWS é capaz de extrair dados detalhados dos projetos, como blocos utilizados, personagens criados e interações entre os elementos do projeto.

### C2.5 Como cada container se comunica dentro do projeto?

- **Usuário**: o usuário se comunica com a aplicação web através da camada Web/HTML, onde visualiza e interage com as funcionalidades do Scratch Analyzer.
- **Aplicação Web**: A aplicação web do SPWS se comunica com a API REST do sistema para acessar suas funcionalidades e recursos. Através de requisições HTTP, a aplicação web envia solicitações à API REST para buscar, criar, atualizar ou deletar informações relacionadas aos projetos do Scratch. As respostas da API são recebidas em formato JSON, que é processado pelo JavaScript do frontend para atualizar a interface de usuário e apresentar os resultados ao usuário.
- **API REST**: se comunica com o banco de dados Postgres do Supabase por meio do protocolo PL/SQL over TCP/IP. Por meio dessa comunicação, a API é capaz de realizar consultas e executar comandos no banco de dados, permitindo que o sistema persista e recupere os dados extraídos da API do Scratch e processados pelo backend. Essa integração é fundamental para garantir a funcionalidade do sistema e a disponibilidade dos dados aos usuários.
- E, também, se comunica com a Scratch API, fazendo chamadas HTTP sobre o protocolo TCP/IP para consultar informações dos projetos e studios no Scratch. Essa comunicação permite que a API do SPWS obtenha os dados necessários para serem processados e armazenados no banco de dados Postgres do Supabase.

### C2.6 Quais são as convenções utilizadas no projeto?

A convenção utilizada no projeto é a **Conventional Commits**. Essa convenção é um conjunto de regras para padronizar os commits em um projeto, tornando a comunicação entre os membros da equipe mais clara e eficiente. Essa convenção define um padrão para os commits, que incluem um tipo (por exemplo, feat, fix, docs), um escopo (opcional) e uma descrição sucinta das alterações realizadas. Além disso, os commits também podem incluir um corpo e/ou um rodapé com informações adicionais. Essa convenção é amplamente utilizada em projetos de código aberto e ajuda a garantir a consistência e a qualidade do código produzido pela equipe.

Em todo o sistema (back e front) foram utilizadas as seguintes convenções:

- **Convenção de Nomenclatura de Arquivos e Diretórios** ([Filenames and File Types | Google Developers](https://developers.google.com/style/filenames));
- **Convenção de Nomenclatura de Variáveis Python** ([snake_case](https://visualgit.readthedocs.io/en/latest/pages/naming_convention.html));
- **Convenção de Nomenclatura de Variáveis React** ([CamelCase](https://www.alura.com.br/artigos/convencoes-nomenclatura-camel-pascal-kebab-snake-case));
- **Convenção de Nomenclatura de Componentes** ([pascalCase](https://www.alura.com.br/artigos/convencoes-nomenclatura-camel-pascal-kebab-snake-case));
- **Convenção de Nomenclatura de Pastas** ([kebab-case](https://www.alura.com.br/artigos/convencoes-nomenclatura-camel-pascal-kebab-snake-case));

### C2.7 Quais são as restrições e limitações do projeto?

Uma das restrições e limitações do projeto é o limite de requisições na API do Scratch. Para evitar suspeitas de violação dos termos de serviço do Scratch, foi definido um limite de 1 requisição a cada 10 segundos no máximo. Caso esse limite seja excedido, a API do Scratch pode bloquear o acesso ao sistema, impedindo a coleta de dados. Além disso, outra restrição importante é a disponibilidade e qualidade dos dados fornecidos pela API do Scratch. Como o sistema depende desses dados para gerar seus resultados, é importante que a API esteja disponível e que os dados sejam confiáveis e atualizados. Caso contrário, o sistema pode apresentar falhas e inconsistências em seus resultados. Outras possíveis restrições e limitações podem surgir durante o desenvolvimento do sistema e devem ser avaliadas e tratadas pela equipe de desenvolvimento.

Além disso, não foi possível hospedar o sistema em um servidor online. No entanto, o sistema pode ser executado localmente em um ambiente de desenvolvimento. Isso significa que o sistema pode ser executado em uma máquina local, mas não será acessível pela Internet.

Uma solução para lidar com a restrição de não encontrar um projeto na base seria implementar a funcionalidade de adicionar automaticamente o projeto pesquisado pelo usuário na base de dados do sistema. Isso permitiria que o projeto seja encontrado na próxima vez que for pesquisado, evitando a necessidade de fazer uma nova requisição à API do Scratch. Além disso, seria possível definir um limite para o número de projetos adicionados automaticamente em um determinado período de tempo, para evitar sobrecarregar o sistema ou a API do Scratch com uma grande quantidade de requisições.

### C2.8 Como as responsabilidades são separadas entre os containers?

No projeto Scratch Projects Web Scraper (SPWS), as responsabilidades são separadas entre diferentes containers. Cada container tem uma responsabilidade específica:

- O container do Aplicativo Web é responsável por fornecer a interface de usuário para o usuário interagir com o sistema. Ele é construído com a biblioteca React/Javascript.
- O container da API REST é responsável por fornecer as funcionalidades do SPWS através de uma API JSON/HTTPS. Ele é construído com a biblioteca Flask/Python.
- O container do Supabase Postgres é responsável por persistir os dados extraídos da Scratch API e processados pelo back-end do sistema SPWS.
- O container da Scratch API é responsável por consultar informações internas do Scratch, como o pseudocódigo dos projetos em formato JSON e seus metadados.

Dessa forma, cada container tem sua própria responsabilidade e trabalha em conjunto para fornecer uma experiência de usuário completa e eficiente. A comunicação entre os containers é realizada através de protocolos como PL/SQL over TCP/IP e HTTP over TCP/IP.

#### C2.8.1 Subsistemas

O **Scratch Projects Web Scraper (SPWS)** interage com subsistemas desvinculados da aplicação principal. Isso ocorre pois nem todos os serviços necessários e recursos do sistema podem ser criados do zero, então, são utilizados sistemas prontos que possuem integrações disponíveis. Dessa forma, o sistema é composto por pequenos subsistemas como:

- **Supabase Postgress**;
- **Scratch API**;

#### C2.8.2 Containers e suas responsabilidades

- **Aplicativo Web:**
  - Provê aos usuários acesso as funcionalidades a partir da aplicação web;
- **API REST:**
  - Provê as funcionalidades do Scratch Projects Web Scraper (SPWS) via API REST JSON/HTTPS;
- **Supabase Postgress**:
  - É responsável por persistir os dados extraídos da Scratch API e processados pelo back-end do sistema SPWS;
- **Scratch API**:
  - É responsável por consultar informações internas do Scratch como, por exemplo, o pseudocódigo dos projetos em formato JSON e seus metadados;
