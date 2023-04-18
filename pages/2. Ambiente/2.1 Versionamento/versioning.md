O versionamento de código é um importante pilar do projeto **Scratch Projects Web Scratch** pois todo o código-fonte tanto do front-end como do back-end é armazenado em um repositório no GitHub. O Git fornece inúmeras vantagens do ponto de vista de desenvolvimento pois permite que várias versões sejam criadas do código fonte e cada alteração seja devidamente catalogada em uma espécie de histórico. Essas diferentes versões do código são os commits, que pouco a pouco os desenvolvedores criam para introduzir novos trechos de código, arquivos e funcionalidades com a finalidade de incrementar o software. O **Scratch Projects Web Scratch** possui um repositório repositórios, o **scratch-data**, que hospeda o código da aplicação web e da API REST. Nesse repositório há uma branch ``main`` que é a branch principal, onde o código de produção está hospedado. Para que os desenvolvedores possam introduzir novas funcionalidades no sistema, é necessário adotar um modelo de versionamento de branchs para versionar o código e permitir que outros desenvolvedores colaborem com suas funcionalidades mas em branchs separadas para evitar conflitos, como ocorreria se todos os desenvolvedores utilizassem a branch main. Esse modelo de versionamento de branchs é o GitFlow, que será visto a seguir.

<p align="center">
  <img src="asset_git_flow_image.png" alt="GitFlow" />
</p>

O GitFlow, como mencionado, é um modelo de versionamento de branchs para repositórios Git que divide a responsabilidade de desenvolvimento em diferentes branchs. O fluxo geral do Gitflow é:

1. Uma ramificação ``develop`` é criada a partir de ``main``;
2. Uma ramificação ``release`` é criada a partir de ``develop``;
3. As ramificações ``feature`` são criadas a partir de ``develop``;
4. Quando a ``feature`` é concluída, ela é mesclada na ramificação ``develop``;
5. Quando o ``release`` é concluído, ela é mesclado nas ramificações ``develop`` e ``main``;
6. Se um problema for detectado na ramificação ``main``, uma ramificação ``hotfix`` será criada a partir de ``main``;
7. Uma vez que o ``hotfix`` é concluído, ele é mesclado para ambos ``develop`` e ``main``.

As branchs que compõem o GitFlow são:

1. **main** - Nessa branch é contido todo o código de produção. Sempre que a branch development possui estabilidade para ser liberada em produção, ela é então mesclada com essa branch;
2. **develop/development** - Nessa branch é contido o código de desenvolvimento. Esse código é constantemente alterado e recebe novos merges de branchs secundárias como **feature/\*** e **bugfix/\***. Essa branch não recebe código e commits diretamente, mas é alterada e recebe mesclagens das branchs citadas. Quando o código atinge maturidade para ir à produção, ela então é mesclada com a **main** após ser gerado um release na branch **release**;
3. **feature** - Cada nova funcionalidade criada deve ter uma branch associada com o prefixo **feature/\***. O desenvolvedor deve trabalhar nessa branch e quando concluir sua funcionalidade mesclar com a branch **develop/development** através de um Pull Request;
4. **bugfix** - Correções de bugs e problemas no sistema devem ser feitas a partir de branchs com esse prefixo (**bugfix/\***). Quando uma correção é concluída e precisa ser mesclada com o código em desenvolvimento, o desenvolvedor deve então mesclar essa branch com a **develop/development** também através de um Pull Request;
5. **hotfix** - Correções críticas que devem entrar diretamente em ambiente de produção (**main**) devem ser feitos a partir de branchs com o prefixo **hotfix/\***. O desenvolvedor deve trabalhar na correção e, uma vez concluída, abrir um Pull Request para mesclar suas alterações com a branch **main** e também com a branch **develop/development**;
6. **release** - Nessa branch, a cada lançamento de código estável da **develop/development** deve ser enviado para a branch release para manter o histórico de lançamentos realizados e suas versões.

O próprio git facilita a utilização do GitFlow pois seu utilitário de linha de comando fornece a possibilidade de se trabalhar com cada uma dessas branchs mencionadas sem ter de criá-las na mão. 

>[!TIP]
>O commando ``git flow feature start <nome-da-funcionalidade>`` é um exemplo de instrução que pode ser utilizada para criar uma nova funcionalidade seguindo o padrão do GitFlow. Após a criação da funcionalidade, uma nova branch será gerada com o nome ``feature/<nome-da-funcionalidade>``. Para finalizar a branch e mesclá-la com a development, o comando é muito parecido, mudando apenas o termo start por finish: ``git flow feature finish <nome-da-funcionalidade>``. Para mais informações, consulte este [**cheatsheet**](https://danielkummer.github.io/git-flow-cheatsheet/).

### 2.1.1 Clonando o repositório

Para clonar o repositório, execute o seguinte comando na sua raiz de projetos e workspaces:

```
git clone https://github.com/Wolf-gangSE/scratch-data.git
```

>[!TIP]
>Você pode acessar o repositório do projeto em [Scratch Data](https://github.com/Wolf-gangSE/scratch-data).

### 2.1.2 Contribuindo com o projeto

Você pode abrir um pull-request a qualquer momento, sinta-se à vontade para fazê-lo no nosso projeto. Aguardamos ansiosamente por suas contribuições, principalmente na nossa forma de realizar o parsing do pseudocódigo dos projetos Scratch v3.

>[!TIP]
>Para abrir uma issue ou problema acesse [Open pull-request](https://github.com/Wolf-gangSE/scratch-data/pulls).

### 2.1.3 Reportando problemas

Para reportar um problema, é necessário acessar a página do repositório no site do Git (como GitHub, GitLab ou Bitbucket) e navegar até a seção de problemas (issues). Em seguida, clique no botão "Novo problema" (new issue) e descreva o problema que você está enfrentando, incluindo detalhes relevantes, como a versão do software, o sistema operacional, as etapas para reproduzir o problema e quaisquer mensagens de erro ou logs disponíveis. Você também pode anexar arquivos relevantes, como capturas de tela ou arquivos de log. Depois de enviar o problema, você poderá acompanhar a discussão e fornecer mais informações ou responder a perguntas adicionais dos mantenedores do repositório.

>[!TIP]
>Para abrir uma issue ou problema acesse [Open issue](https://github.com/Wolf-gangSE/scratch-data/issues).
