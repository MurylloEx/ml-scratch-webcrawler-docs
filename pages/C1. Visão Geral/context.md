### C1.1 O que é o sistema Scratch Projects Web Scraper (SPWS)?

O Scratch Projects Web Scraper (SPWS) é um projeto que tem como objetivo extrair dados estatísticos de um projeto público do Scratch. Esses dados incluem o número de estruturas de controle, operadores lógicos, sons e efeitos usados no projeto. Diferente do Doutor Scratch, que utiliza um sistema de pontuação para avaliar a qualidade do projeto, o SPWS foca em fornecer apenas o quantitativo dos recursos utilizados. O usuário pode acessar o site, apontar o ID de um projeto público do Scratch e obter as informações desejadas. O projeto utiliza tecnologias como Python, Scratch, Figma, Flask, React e SQLite para desenvolver as camadas de front-end e back-end, e se comunica com a API do Scratch para coletar os dados necessários.

###  C1.2 Quais são as entidades (atores, módulos e containers) do sistema?

- No sistema, há uma entidade ator que representa o usuário geral, que é responsável por interagir com o sistema. 
- Os módulos incluem a API do Scratch, que coleta dados dos projetos, o sistema SPWC que é responsável pela análise dos projetos e geração de estatísticas, o Supabase que é um banco de dados externo, o WebScrapping que é responsável pela coleta de dados do site do Scratch e a análise dos blocos, que é um módulo interno para realizar análises de blocos de códigos. 
- Os containers são a API, responsável por receber e enviar dados, e o WEB APP, que é a interface gráfica do sistema para que o usuário possa interagir com as funcionalidades. 
### C1.3 Como as entidades presentes no diagrama se relacionam para contribuir com o funcionamento do sistema?

As entidades presentes no diagrama se relacionam de forma interdependente para o funcionamento do sistema. O Ator, que é o usuário geral, utiliza o sistema SPWC para obter informações sobre projetos do Scratch. Para isso, o sistema utiliza a API do Scratch e o WebScrapping para coletar dados dos projetos e a Análise de blocos para contar a quantidade de cada tipo de bloco utilizado. Os dados coletados são armazenados no Supabase pelo sistema SPWC. Desse modo, as entidades trabalham juntas para fornecer ao usuário as informações desejadas sobre os projetos do Scratch.

### C1.4 Quais são os atores do sistema?

Os atores do sistema são os usuários gerais, que têm acesso completo às funcionalidades do sistema, sem haver diferenciação. Isso significa que qualquer pessoa pode utilizar o sistema SPWC para obter as estatísticas de um projeto público do Scratch. O sistema não exige nenhum tipo de autenticação ou nível de permissão para o acesso às suas funcionalidades.

### C1.5 Quais são os serviços externos ao sistema?

O **Scratch Projects Web Scraper (SPWS)** se comunica com os serviços externos ao sistema, são aqueles que não são gerenciados pelo sistema em si, a Scratch API e o Supabase.

- A Scratch API é utilizada para coletar dados dos projetos no Scratch e o Supabase é utilizado para armazenar os dados dos projetos obtidos pela aplicação.

Esses serviços são externos ao sistema porque são desenvolvidos e mantidos por outras empresas/organizações e são acessados por meio de suas APIs, ou seja, interfaces que permitem a comunicação e o intercâmbio de informações entre diferentes sistemas.