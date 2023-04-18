### C3.1 Como foi idealizado o uso do framework Flask?

O **Flask** é um framework web minimalista em Python que permite aos desenvolvedores criar APIs de forma rápida e eficiente. Ele é bastante popular na comunidade Python, devido à sua simplicidade, facilidade de uso e flexibilidade. Além disso, o **Flask** é altamente extensível e permite que os desenvolvedores adicionem facilmente funcionalidades extras, como autenticação de usuários, armazenamento em cache e suporte a banco de dados.

Uma das principais vantagens do **Flask** é sua facilidade de aprendizado e uso. Ele é uma ótima opção para desenvolvedores iniciantes em Python que desejam criar uma API simples sem a necessidade de aprender um framework complexo e extenso. O **Flask** também é altamente configurável e permite que os desenvolvedores escolham as bibliotecas e ferramentas que desejam usar em seus projetos.

Outra vantagem do **Flask** é sua modularidade. Ele é projetado para ser usado em conjunto com outras bibliotecas Python e, portanto, é altamente extensível. Isso significa que os desenvolvedores podem facilmente adicionar recursos adicionais à sua API, como suporte a bancos de dados ou autenticação de usuários, sem ter que reescrever todo o código.

O **Flask** é altamente escalável, ele é capaz de lidar com grandes volumes de tráfego e pode ser usado para criar APIs complexas e em grande escala. O **Flask** também é fácil de implantar em diferentes ambientes, incluindo servidores web e plataformas em nuvem.

Algumas das principais razões pelas quais o Flask é uma escolha popular para construir APIs em Python incluem:

- **Simplicidade:** o Flask é um framework web minimalista que é fácil de aprender e usar. Ele oferece uma abordagem simples e direta para a criação de APIs, sem a necessidade de lidar com um framework complexo e extenso.

- **Flexibilidade:** o Flask é altamente configurável e permite que os desenvolvedores escolham as bibliotecas e ferramentas que desejam usar em seus projetos. Ele é projetado para ser usado em conjunto com outras bibliotecas Python e é altamente extensível.

- **Modularidade:** o Flask é altamente modular e permite que os desenvolvedores adicionem facilmente funcionalidades extras, como autenticação de usuários, armazenamento em cache e suporte a banco de dados. Isso significa que os desenvolvedores podem facilmente adicionar recursos adicionais à sua API sem ter que reescrever todo o código.

- **Escalabilidade:** o Flask é altamente escalável e pode lidar com grandes volumes de tráfego. Ele é capaz de lidar com APIs complexas e em grande escala e pode ser implantado facilmente em diferentes ambientes, incluindo servidores web e plataformas em nuvem.

> [!WARNING]
> Leia mais a respeito sobre o **Flask** clicando aqui [Flask API](https://flask.palletsprojects.com/).

### C3.2 Camadas do projeto

Para entender como as camadas funcionam no projeto, precisamos visualizar a sua estrutura de pacotes e então percorrer camada por camada a fim de visualizar o fluxo de um caso de uso complexo. Vejamos como a estrutura de arquivos está dividida:

```
\root
  \-> api
  \-> databases
  \-> frontend
    \-> public
    \-> src
      \-> assets
      \-> components
      \-> context
      \-> pages
      \-> services
  \-> utilities
  \-> webscrapping
```

Como você pode ver, há uma pasta src que contém todo o código da aplicação. Cada diretório desse possui um propósito, veremos todos eles a seguir.

- **api:** essa pasta pode conter o código para uma API RESTful, que é usada para fornecer dados para a aplicação. A API pode ser construída usando uma tecnologia como Node.js ou Python.
- **databases:** essa pasta pode conter arquivos relacionados a bancos de dados, como scripts de migração e arquivos de configuração.
- **frontend:** esta pasta contém o código-fonte do aplicativo React. É a pasta principal do projeto, onde a maioria do trabalho será realizado.
- **public:** esta pasta contém arquivos estáticos que serão acessíveis publicamente na aplicação, como imagens, arquivos CSS e JavaScript.
- **src:** esta pasta é a pasta principal do código-fonte do aplicativo React e contém as seguintes pastas:
- **assets:** esta pasta contém arquivos de imagem e outros recursos usados ​​no aplicativo.
- **components:** esta pasta contém componentes React reutilizáveis ​​que são usados ​​em várias partes do aplicativo.
- **context:** esta pasta contém arquivos relacionados a contextos do React, que podem ser usados ​​para fornecer dados globalmente na aplicação.
- **pages:** esta pasta contém os componentes React que são renderizados quando uma rota é acessada no aplicativo.
- **services:** esta pasta contém arquivos relacionados a serviços que interagem com a API ou outros serviços externos.
- **utilities:** esta pasta pode conter utilitários gerais que são usados ​​em toda a aplicação, como funções de utilidade ou arquivos de configuração.
- **webscrapping:** esta pasta pode conter scripts de web scraping que são usados ​​para obter dados de outras fontes na web que não possuem uma API acessível publicamente.

> [!TIP]
> Essas pastas não foram geradas por nenhum comando de CLI. O padrão de nomenclatura deve ser completamente lowercase, sem espaços e caracteres especiais. Para mais informações consultar [Linux / UNIX: Rules For Naming File And Directory Names](https://www.cyberciti.biz/faq/linuxunix-rules-for-naming-file-and-directory-names/).

### C3.3 Quais são as restrições e limitações do projeto e como são contornadas?

As principais limitações e restrições do projeto são impostas devido a questões financeiras, requisitos do cliente, condições de hardware, escopo, tempo e vários outros desafios. A seguir podemos ver algumas dessas limitações e restrições.

- **Limitação**: Não foi possível realizar o deploy da aplicação back-end e front-end em um lugar específico para prover o sistema publicamente;
  - **Solução**: Para contornar este problema o usuário que desejar utilizar o sistema deverá cloná-lo e executar uma instância de um banco de dados Postgres localmente além de rodar o script `start.bat` na raiz do projeto para iniciar o Front-end e o Back-end;
- **Limitação**: Devido a uma limitação proposital da API do Scratch, apenas os primeiros 10000 projetos são retornados nos endpoints de exploração de projetos, listagem de studios, etc;
  - **Solução**: Para contornar esse problema que restringe severamente a capacidade de extrair projetos e studios em massa, foi criada a estratégia de consulta incremental, a qual os projetos que não foram coletados e salvos na base são salvos após o usuário fornecer o link. Ou seja, projetos desconhecidos são analisados e salvos na base de dados para agilizar consultas futuras.

### C3.4 Implementando uma nova funcionalidade respeitando a arquitetura

Para se implementar uma nova funcionalidade você deverá seguir o fluxo de implementação habitual de um caso de uso no back-end. Primeiro é necessário identificar suas entidades envolvidas, depois mapear seus serviços, regras de validação de entrada, controladores e por fim agrupar todos os elementos do domínio da funcionalidade em um módulo que possa ser importado no módulo raiz chamado ``AppModule``. Nos tópicos a seguir você verá como realizar essa implementação respeitando a arquitetura subjacente ilustrada no diagrama no topo desta página.

#### C3.4.1 Quais camadas devem ser implementadas?

As camadas que devem ser implementadas para se criar um novo endpoint e, consequentemente, um caso de uso no lado do back-end são as seguintes, em ordem de prioridade:

1. **Resources:**<b>
São as classes responsáveis por lidar com as solicitações HTTP que chegam ao servidor Flask. Em geral, cada recurso representa um endpoint da API e define as operações que podem ser executadas nesse endpoint. Para criar um novo recurso, é necessário criar uma nova classe que herda da classe Flask's Resource e implementar os métodos HTTP necessários, como GET, POST, PUT ou DELETE. Por exemplo, se você quiser criar um novo endpoint para listar usuários, poderia criar um novo recurso chamado UserListResource que implementa o método GET.

2. **Controllers:**<b>
São as classes responsáveis por orquestrar a lógica de negócios da aplicação, como validação de entrada, manipulação de dados e interação com o banco de dados. Em geral, cada recurso da API tem um controlador correspondente que lida com a lógica de negócios relacionada a esse endpoint. Para criar um novo controlador, é necessário criar uma nova classe que encapsule a lógica de negócios do recurso e chamar os métodos correspondentes do serviço.

3. **Services:**<b>
São as classes responsáveis por encapsular a lógica de negócios da aplicação. Eles fornecem uma camada de abstração entre o controlador e o banco de dados, por exemplo. Para criar um novo serviço, é necessário criar uma nova classe que encapsule a lógica de negócios da aplicação e fornecer métodos para interagir com o banco de dados, como inserir, atualizar ou excluir registros.

4. **Utilities:**<b>
São funções ou classes utilitárias que podem ser usadas em toda a aplicação para tarefas comuns, como manipulação de data/hora ou formatação de strings. Para criar um novo utilitário, é necessário criar uma nova função ou classe que encapsule a lógica de negócios do utilitário e que possa ser facilmente reutilizada em toda a aplicação.

#### C3.4.2 Padrões e convenções de nomenclatura

- **Convenção de Nomenclatura de Arquivos e Diretórios** ([Filenames and File Types | Google Developers](https://developers.google.com/style/filenames));
- **Convenção de Nomenclatura de Variáveis JavaScript** ([AirBnb Naming Conventions](https://airbnb.io/javascript/#naming-conventions));
- **Convenção de Fluxo de Trabalho Git** ([GitFlow](https://danielkummer.github.io/git-flow-cheatsheet/));
- **Convenção de Commits** ([Conventional Commits](https://www.conventionalcommits.org/pt-br/v1.0.0/) e o [Gitmoji](https://gitmoji.dev/));

> [!TIP]
> Para obter maiores informações sobre o padrão de nomenclatura de arquivos e classes das camadas citadas, visite os tópicos anteriores e veja mais informações a respeito de cada uma das camadas.

#### C3.4.3 Padrões de projeto utilizados

- **Decorator**: Utilizado na definição de rotas do Flask;
- **Factory Method**: É um padrão criacional e foi utilizado na criação de alguns objetos;
- **Method Chaining**: É um padrão que permite encadear métodos numa chamada, utilizado principalmente nas consultas ao Supabase.

#### C3.4.4 Módulos e serviços disponíveis para utilização

Para esse projeto em específico, nenhum módulo ou pacote foi criado para que outros sistemas possam realizar integrações. No futuro, pretende-se criar pacotes python para exportar a funcionalidade de parsing do pseudocódigo JSON.
