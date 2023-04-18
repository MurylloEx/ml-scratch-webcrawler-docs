### C2.1 Quais são as principais tecnologias utilizadas no sistema?

As principais tecnologias utilizadas para a construção do projeto foram [Python](https://www.python.org/) e a utilização de banco de dados relacional [Supabase](https://supabase.com/).

- Python é uma linguagem de programação de alto nível, interpretada e orientada a objetos. A linguagem é de código aberto e tem uma grande comunidade de desenvolvedores ativos, o que garante seu contínuo dsenvolvimento e atualização.
- Já o Supabase é uma plataforma de banco de dados e desenvolvimento de aplicativos que fornece uma API pronta para uso e uma interface do usuário amigável para gerenciar seus bancos de dados e recursos de backend. Ele é construído sobre o Postgres e inclui recursos como autenticação, armazenamento em nuvem, WebSockets em tempo real, entre outros. A Supabase é uma alternativa de código aberto e escalável para o Firebase do Google, permitindo que os desenvolvedores criem rapidamente aplicativos e serviços de backend robustos e seguros.

### C2.2 Quais são os frameworks utilizados dentro do sistema?

Dentro do projeto em questão, foram utilizados alguns frameworks para facilitar o desenvolvimento e organização do código, sendo os principais o: [Flask](http://localhost/#/HOME:~:text=necessidades%20de%20design.-,Flask,-O%20Flask%20%C3%A9) e [React](https://react.dev/)

- Flask é um framework web em Python utilizado para construir aplicações web de forma rápida e eficiente, proporcionando uma estrutura sólida e modular para o desenvolvimento.
- Já o React é uma biblioteca JavaScript utilizada para criar interfaces de usuário dinâmicas e responsivas, sendo bastante útil para a construção de aplicações web modernas e interativas.
- Ambos os frameworks têm sido amplamente utilizados na construção de sistemas web, contribuindo para uma melhor organização do código e um desenvolvimento mais rápido e eficiente.

### C2.3 Quais são as linguagens de programação utilizadas dentro do projeto?

A principal linguagem de programação utilizada dentro do projeto é [Python](https://www.python.org/). A escolha da linguagem Python para o desenvolvimento do projeto se deve a diversos fatores. Primeiramente, o Python é uma linguagem de programação muito versátil, que pode ser utilizada em diversos contextos, desde análise de dados até desenvolvimento web. Além disso, ela é conhecida por sua simplicidade, clareza e facilidade de aprendizado, o que torna o desenvolvimento mais rápido e eficiente. Outra vantagem do Python é a grande quantidade de bibliotecas disponíveis, que facilitam o desenvolvimento de projetos e permitem a resolução de problemas complexos de forma mais simples. Por fim, a comunidade de desenvolvedores em Python é bastante ativa e colaborativa, o que ajuda a solucionar dúvidas e problemas que possam surgir durante o desenvolvimento. Todos esses fatores justificam a escolha do Python como linguagem principal no projeto.

> [!INFO]
> Para mais informações sobre o Python, visite a documentação oficial clicando [**aqui**](https://docs.python.org/3/).

### C2.4 Em quais camadas são divididas o projeto?

O sistema **Scratch Projects Web Scraper (SPWS)** é dividido em duas camadas principais: frontend e backend. A camada de front end é responsável por lidar com a interface do usuário e é desenvolvida com tecnologias como React. Já a camada de backend que é composta pelas subcamadas API, Resources, Controllers e Services, é responsável por processar as requisições do usuário e fornecer os dados necessários para a interface do usuário. Essa camada é desenvolvida principalmente com Python e utiliza o framework Flask para facilitar o desenvolvimento. Além disso, a camada de back end faz uso do banco de dados relacional SQLite para armazenar e gerenciar os dados do sistema. A divisão em camadas frontend e backend é justificada pela necessidade de separar as responsabilidades do sistema de forma clara e organizada, permitindo que cada camada seja desenvolvida de forma independente e com tecnologias específicas para cada tipo de tarefa. Isso também permite que a equipe de desenvolvimento trabalhe de forma mais eficiente e produtiva, já que cada membro pode se especializar em uma camada específica do sistema.

### C2.5 Como cada container se comunica dentro do projeto?

- **Resource**:
  - Para que cada container se comunique dentro do projeto, o fluxo de comunicação ocorre da seguinte forma: o container do frontend faz requisições HTTP para o container da camada Resource, especificando a rota e o método HTTP. Em seguida, a camada Resource direciona essa requisição para o Controller correspondente, que irá validar e processar a requisição. Se necessário, o Controller faz chamadas para os Services para realizar a lógica de negócio. Finalmente, o Controller retorna uma resposta para a camada Resource, que envia a resposta para o frontend. Dessa forma, a comunicação é feita de maneira organizada e estruturada entre as camadas do projeto.
- **Controller**:
  - Em seguida, a camada Resource direciona essa requisição para o Controller correspondente, que irá validar e processar a requisição.
- **Service**:
  - A camada Service é responsável por implementar a lógica de negócio da aplicação.

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

Uma solução para lidar com a restrição de não encontrar um projeto na base seria implementar a funcionalidade de adicionar automaticamente o projeto pesquisado pelo usuário na base de dados do sistema. Isso permitiria que o projeto seja encontrado na próxima vez que for pesquisado, evitando a necessidade de fazer uma nova requisição à API do Scratch. Além disso, seria possível definir um limite para o número de projetos adicionados automaticamente em um determinado período de tempo, para evitar sobrecarregar o sistema ou a API do Scratch com uma grande quantidade de requisições.
