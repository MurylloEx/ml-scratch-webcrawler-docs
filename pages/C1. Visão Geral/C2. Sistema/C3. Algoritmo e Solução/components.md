### C3.1 Como foi idealizado o uso do framework NestJS?

A maioria dos WebServices da atualidade são feitos em tecnologias que suportam nativamente o padrão arquitetural MVC. Com o **XXXXX** não poderia ser diferente. A escolha do **NestJS** foi tomada com foco em resolver um problema que o **Express** e o **Node.js** sozinhos não conseguem resolver: a arquitetura. O **NestJS** foi idealizado para ser utilizado como a base arquitetural do sistema, sendo esta fortemente embasada na arquitetura **Angular**. O Nest é um framework fortemente opinativo e não deixa lacunas em sua implementação tanto lógica quanto estrutural. Numa equipe com 5 pessoas torna-se difícil implementar os casos de uso de forma padronizada e seguindo normas rígidas se são utilizados apenas documentos e advertências verbais. É necessário algo mais. Esse algo mais é a imposição das decisões arquiteturais de forma intransponível, feita em nível de código. O **NestJS** impõe como se deve implementar um controller, service, module, guard, interceptor e vários outros recursos que o back-end necessita para funcionar sem a necessidade de uma equipe inteira pensar em como fazer isso. 

De forma resumida, o **XXXXX** foi idealizado para utilizar o NestJS de forma que favoreça a **produtividade**, **escalabilidade**, **portabilidade**, **padronização** e a **uniformidade** na implementação de seus casos de uso. Com **NestJS** o back-end foi feito de forma muito mais rápida levando em conta a **experiência da equipe com o Angular em projetos comerciais já vivenciados**.

> [!WARNING]
> Leia mais a respeito sobre o porque **NestJS** foi escolhido como o framework base do projeto e entenda a sua filosofia com ênfase na arquitetura na seção **2. Qualidade de Software**.

### C3.2 Camadas da API REST

Para entender como as camadas funcionam no back-end, precisamos visualizar a sua estrutura de pacotes e então percorrer camada por camada a fim de visualizar o fluxo de um caso de uso complexo. Vejamos como a estrutura de arquivos está dividida:

```
\ root
  \-> database
  \-> dist
  \-> node_modules
  \-> src
    \-> config
    \-> controllers
    \-> docs
    \-> exceptions
    \-> filters
    \-> hooks
    \-> models
    \-> modules
    \-> security
      \-> guards
    \-> services
    \-> validators
    \-> views
      \-> mails
    \-> websocket
```

Como você pode ver, há uma pasta src que contém todo o código da aplicação e dentro dela há ramificações de diretórios para ``config``, ``controllers``, ``docs``, ``exceptions``, ``filters``, ``hooks``, ``models``, ``modules``, ``security``, ``services``, ``validators``, ``views``, ``websocket``. Cada diretório desse possui um propósito, veremos todos eles a seguir.

- **config** - É o diretório onde reside toda a configuração do servidor como tokens, chaves-secretas JWT, etc. Não adotamos a abordagem de arquivos ``.env`` pois estes não permitem estruturas como arrays e objetos aninhados, logo a configuração do servidor é feita em arquivos JSON;
- **controllers** - É o diretório onde residem todos os controllers da aplicação, sendo estes arquivos com o padrão de nomenclatura ``name.controller.ts`` e contendo uma classe exportada via ``export`` com o padrão de nomenclatura ``NameController``;
- **docs** - É onde reside todos os decoradores utilizados para documentar as rotas por meio do OAS (Open Api Specification), também conhecido como **Swagger**;
- **exceptions** - É o diretório que contém todas as classes de exceções de regra de negócio utilizadas no **XXXXX**. Cada e exceção segue o padrão de nome de arquivo ``name.exception.ts`` contendo uma classe exportada via ``export`` com o padrão de nomenclatura ``NameController``;
- **filters** - E o diretório que contém todos os filtros de exceções não tratadas. Esses filtros tem uma ordem de prioridade que depende da ordem alfabética do nome do arquivo. Os filtros possuem arquivos com um padrão de nomenclatura ``name.filter.ts`` e exportam uma classe via ``export`` com o padrão de nomenclatura ``NameExceptionFilter`` ou ``NameErrorFilter``. O nome a ser escolhido depende da natureza do evento a ser filtrado (Exception ou Error).
- **hooks** - É o diretório que contém todos os ``interceptors`` de requisições HTTP. Os interceptors são utilizados para manipular as requisições e respostas e alterá-las antes ou depois que elas atingem os controllers. São chamadas de ``hooks`` em referência ao que é feito nos sistemas operacionais Windows e Linux chamado de **API Hooking** que é um conceito de se interceptar e mudar o comportamento de uma chamada de API a fim de mudar o efeito colateral de uma chamada de função. Seu arquivo possui um padrão de nomenclatura escrito como ``name.interceptor.ts`` e cada arquivo de interceptação exporta uma classe com o padrão de nomenclatura ``NameInterceptor``;
- **models** - É o diretório que contém todos os modelos/entidades do sistema. Os modelos são classes com anotações de tipo e anotações de relacionamento utilizadas para modelar a base através de um mapeador objeto-relacional chamado ``TypeORM``. Cada modelo é um arquivo com o padrão de nomenclatura ``name.model.ts`` que exporta uma classe via ``export`` com o padrão de nomenclatura ``NameModel``;
- **modules** - É o diretório que contém todos os módulos do sistema. Módulos são classes que agrupam outros módulos e serviços. Dessa forma, é possível criar um módulo que contenha, por exemplo todos os serviços de um usuário, bastando apenas importar o módulo para ter acesso a estes serviços. Os módulos são arquivos que possuem o padrão de nomenclatura ``name.module.ts`` e contém uma classe exportada via ``export`` com o padrão de nomenclatura ``NameModule``;
- **security** - É o diretório mais importante para a autenticação e autorização do sistema pois é onde reside toda a lógica de segurança, decoradores de rotas de autenticação e autorização e também os papéis dos usuários no sistema. Dentro desse diretório há guardas que são classes responsáveis por permitir ou negar o acesso a uma rota ou até mesmo a um controller inteiro. Essas guardas tem um padrão de nomenclatura de arquivo ``name.guard.ts`` e exportam uma classe via ``export`` com o padrão de nomenclatura ``NameGuard``;
- **services** - É o diretório mais importante do sistema pois contém toda a regra de negócio e a realização substancial dos casos de uso do lado do servidor. Neste diretório cada serviço possui um arquivo com o padrão de nomenclatura ``name.service.ts`` que exporta uma classe com o padrão de nomenclatura ``NameService`` contendo várias funções e métodos com regras de negócio;
- **validators** - É o diretório que contém os validadores de entrada, popularmente conhecidos como ``Data Transfer Objects``. Na arquitetura do **XXXXX** eles se chamam validadores e são compostos por um arquivo com o padrão de nomenclatura ``name.controller-name.vld.ts``. Por exemplo, o ``popularity.evaluation.vld.ts`` é o validador responsável por verificar se os dados de entrada de uma avaliação de popularidade de curso foram especificados corretamente no corpo da requisição feita para um controller chamamdo ``EvaluationController``. Cada validador exporta via ``export`` uma classe com o padrão de nomenclatura ``NameValidator``. Nesse cenário, os validadores são responsáveis por verificar se os dados foram formatados e passados corretamente, não são utilizados para trafegar dados entre o controller e o service, por exemplo;
- **views** - É o diretório que contém todas as views do sistema que, nesse cenário, se resumem a arquivos de visualização de e-mail. Ou seja, não há uma camada formal do ``MVC`` propriamente dita para ``views`` que permita a criação, por exemplo de páginas Web. Esse é um ponto importante a ser notado pois a arquitetura do sistema foi fundamentada para ser MSC (Model-Service-Controller) uma vez que não há instalado no back-end um renderizador como ejs, handlebars, mustache, blade ou similares;
- **websocket** - É o diretório que contém o Gateway WebSocket, uma espécie de classe que recebe as solicitações WebSocket e as manipula para devolver uma resposta.

> [!TIP]
> A maioria das entidades mencionadas acima podem ser geradas diretamente pela linha de comando do NestJS. Experimente executar ``nest g --help`` para ver como gerar cada um deles.

### C3.3 Quais são as restrições e limitações do projeto e como são contornadas?

As principais limitações e restrições do projeto são impostas devido a questões financeiras, requisitos do cliente, condições de hardware, escopo, tempo e vários outros desafios. A seguir podemos ver algumas dessas limitações e restrições.

- **Limitação**: O sistema ter que funcionar, de início, somente para android, devido ao alto custo de disponibilização de aplicativo na **Apple Store**;
  - **Solução**: Para contornar esta limitação o usuário poderá acessar o aplicativo em modo de pré-release/desenvolvimento através do **QR Code** gerado pelo **Expo**;
- **Limitação**: Todas as fontes de dados são coletadas manualmente, devido a não existência de uma API pública para a extração dos dados dos cursos, professores e demais envolvidos;
  - **Solução**: Para contornar este problema todos os dados tiveram de ser extraídos manualmente através de planilhas XLSX e sites da universidade por meio de uma força-tarefa com 4 pessoas envolvidas a fim de paralelizar a coleta dos dados;
- **Limitação**: Por motivos de interoperabilidade com dispositivos móveis, deve-se utilizar um dos seguintes protocolos para comunicação: HTTP, HTTPS, WebSocket (WS) WebSocket Secure (WSS), sem recorrer a protocolos como TCP/UDP diretamente, pois não são suportados com pouco esforço;
  - **Solução**: Para resolver este problema os protocolos HTTP, HTTPS, WS e WSS devem ser utilizados a fim de manter a compatibilidade com aplicações móveis;
- **Restrição**: Uma linguagem de programação única (JavaScript) tanto para backend como para frontend mobile;
- **Restrição**: Os dados devem ser serializados em JSON ou XML para facilitar a transferência, consumo e o tráfego de dados. O formato de tráfego de dados padrão do mercado é o JSON e deve ser adotado nas comunicações pela API;
- **Restrição**: Deve ser utilizada criptografia nos protocolos de comunicação, para inibir ataques de Sniffing e MITM (Man In The Middle) que possam ser utilizados para ler ou modificar o conteúdo das requisições;

### C3.4 Implementando uma nova funcionalidade respeitando a arquitetura

Para se implementar uma nova funcionalidade você deverá seguir o fluxo de implementação habitual de um caso de uso no back-end. Primeiro é necessário identificar suas entidades envolvidas, depois mapear seus serviços, regras de validação de entrada, controladores e por fim agrupar todos os elementos do domínio da funcionalidade em um módulo que possa ser importado no módulo raiz chamado ``AppModule``. Nos tópicos a seguir você verá como realizar essa implementação respeitando a arquitetura subjacente ilustrada no diagrama no topo desta página.

#### C3.4.1 Quais camadas devem ser implementadas?

As camadas que devem ser implementadas para se criar um novo endpoint e, consequentemente, um caso de uso no lado do back-end são as seguintes, em ordem de prioridade:

1. **Modelo/Entidades**<br>
  Uma funcionalidade geralmente está envolvida com a modelagem de entidades na base de dados, sendo o primeiro elemento a ser implementado.
2. **Serviços**<br>
  Após a modelagem, deve ser criado os serviços pois o NestJS já fornece uma implementação genérica de repositório para qualquer modelo, bastando apenas injetá-lo utilizando o ``@InjectRepository()``.
3. **Exceptions**<br>
  Durante a implementação dos serviços o programador perceberá que necessitará tratar casos de erros, exceções de negócio e inevitavelmente terá de implementar classes especializadas para representar estas exceções de regra de negócio.
4. **Validators**<br>
  Uma vez que as entidades foram devidamente modeladas e os serviços criados, bem como seus desvios condicionais, é o momento de se criar as regras de validação de entradas. Nem sempre podemos receber entidades completas como entrada para processamento de um caso de uso, então criamos entidades modelo desvinculadas do banco de dados conhecidas como validadores, ou popularmente, **Data Transfer Objects**.
5. **Controllers**<br>
  Após definir os critérios de validação de entrada dos dados, chegou o momento de criar os controladores de ações e especificar suas rotas utilizando decoradores e programação orientada a aspectos (AOP).
6. **Modules**<br>
  Por fim, mas não menos importante, no **XXXXX** geralmente cada controlador está associado a um serviço que está associado a uma entidade e todos esses 3 elementos estão agrupados em um módulo. O **NestJS**, assim como o **Angular** trabalham com o conceito de módulos e por fim são exportados para o módulo raiz conhecido como ``AppModule``. Violar esse padrão faria com que o módulo raiz ficasse sobrecarregado de importações de muitos domínios diferentes. Consulte o tópico **C3.2.6** para entender sobre os módulos do **NestJS**.

> [!ATTENTION]
> Veja na prática o código-fonte de uma série de funcionalidades implementadas acessando a [API Docs XXXXX](https://apidocs.sejaupe.website/).

#### C3.4.2 Padrões e convenções de nomenclatura

Para auxiliar a separação de responsabilidades, a coesão e a manutenção da arquitetura, as pastas, arquivos, funções e variáveis seguem alguns padrões de nomenclatura. As pastas foram divididas para representar as camadas do software, para isso foram nomeadas como: ``controller``, ``models``, ``services``, etc. Já os arquivos possuem uma estrutura ``name.layer.ts``, assim um arquivo que armazena as atividades de um controller de professor, por exemplo, terá de ser nomeado ``professor.controller.ts``. Em relação ao nome das funções e variáveis, recomenda-se a utilização do camelCase, pois ele ajuda a legibilidade e é o padrão adotado pelo **XXXXX** aderente ao **AirBnB JavaScript Code Style**. Em todo o sistema (back e front) foram utilizadas as seguintes convenções:

- **Convenção de Nomenclatura de Arquivos e Diretórios** ([Filenames and File Types | Google Developers](https://developers.google.com/style/filenames));
- **Convenção de Nomenclatura de Variáveis JavaScript** ([AirBnb Naming Conventions](https://airbnb.io/javascript/#naming-conventions));
- **Convenção de Fluxo de Trabalho Git** ([GitFlow](https://danielkummer.github.io/git-flow-cheatsheet/));
- **Convenção de Commits** ([Conventional Commits](https://www.conventionalcommits.org/pt-br/v1.0.0/) e o [Gitmoji](https://gitmoji.dev/));
- **Versionamento de Software - Com adaptações e aderência parcial** ([Semantic Versioning](https://semver.org/));

> [!TIP]
> Para obter maiores informações sobre o padrão de nomenclatura de arquivos e classes das camadas citadas, visite os tópicos anteriores e veja mais informações a respeito de cada uma das camadas.

#### C3.4.3 Padrões de projeto utilizados

- **Decorator**: Utilizado extensivamente por todas as classes do sistema, controlers, services, modules, etc;
- **Adapter**: Utilizado pelo Gateway websocket para envolver a instância do servidor HTTP e retornar uma instância de Gateway WebSocket a partir da insância HTTP. Esse comportamento é feito a partir da classe ``WsAdapter``;
- **Builder**: Este padrão foi utilizado em conjunto com o encadeamento de métodos ou **Method Chaining** para tornar mais legível e elegante a instanciação de classes utilizando o padrão **fluent interface** que permite criar um objeto como se estivesse falando (uma espécie de DSL);
- **Prototype**: Amplamente utilizado internamente pelo NestJS para realizar modificação de objetos, modelos de instâncias e aplicação de metadados a partir dos decoradores;
- **Factory Method**: É utilizado amplamente nos módulos para criá-los dinamicamente. Um exemplo de sua aplicabilidade está nos métodos ``forRoot`` presentes em alguns módulos;
- **Strategy**: Este padrão de projeto foi utilizado na autenticação do sistema. A autenticação é uma ação que possui diferentes estratégias no NestJS. A estratégia implementada foi a do Json Web Token. É fácil perceber a aplicação deste padrão de projeto ao abrir o pacote ``src.security.guards``;
- **Observer**: Este padrão foi utilizado nos interceptadores os permitem inscrever um observador no objeto retornado do tipo ``Observable`` para ser notificado quando a resposta está disponível e, por fim, permitir a sua manipulação;
- **Interceptor**: Utilizado nativamente pelo NestJS, este padrão foi responsável por implementar o sistema de cache, respostas com formato padronizado, verificar a presença do cabeçalho de versão do aplicativo móvel e implementar a autorização **Json Web Token**;
- **Pipe and Filters**: Padrão utilizado extensivamente para tratar as exceções globais de regra de negócio e evitar o fenômeno do **código hadouken** ao tratar os erros e fornecer seu retorno apropriado;
- **Guard**: Padrão de projeto utilizado para proteger rotas com base em classes utilizadas como parâmetros de anotação dos controllers.

#### C3.4.4 Módulos e serviços disponíveis para utilização

Para visualizar quais módulos e serviços estão disponíveis para utilização no **XXXXX**, criamos uma documentação completa e detalhada de todos os módulos, serviços, dependências, entidades, controladores, guardas, classes, etc. Acesse a [API Docs XXXXX](https://apidocs.sejaupe.website/).

> [!ATTENTION]
> Visualize todos os módulos e serviços disponíveis acessando [API Docs XXXXX](https://apidocs.sejaupe.website/).