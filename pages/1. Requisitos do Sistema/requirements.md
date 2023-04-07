Requisitos são, além de funções, objetivos, propriedades, restrições que o sistema deve possuir para satisfazer contratos, padrões ou especificações de acordo com o(s) usuário(s). De forma mais geral um requisito é uma condição necessária para satisfazer um objetivo. Nos próximos tópicos você verá uma lista resumida dos requisitos funcionais que existem e dos requisitos não-funcionais

### 1.1 Requisitos Funcionais

| Requisito | Descrição | Classificação |
| --- | --- | --- |
| RF001. Extrair identificadores e metadados dos projetos do Scratch | O algoritmo deverá ser capaz de extrair informações relevantes dos projetos. | Essencial | 
| RF002. Obter as informações dos blocos utilizados em cada um dos projetos | O algoritmo deverá ser capaz de obter, através de um JSON, os blocos dos projetos. | Essencial | 
| RF003. Realizar a contagem dos tipos blocos utilizados | O algoritmo deverá ser capaz de contar os tipos de blocos para classificá-los. | Importante | 
| RF004. Baixar projetos que já foram armazenados | O usuário deverá ser capaz de baixar, através de um CSV, todos os projetos já armazenados no banco. | Importante |
| RF005. Realizar pesquisa de um projeto | O usuário deverá ser capaz de pesquisar por um projeto específico através de um link. | Essencial |
| RF006. Exibir dados dos projetos | O usuário deverá ser capaz de visualizar informações gerais sobre cada um dos projetos, após sua pesquisa. | Importante |


> [!TIP]
> Você pode visualizar todos os requisitos funcionais na **seção 1.1** com maior nível de detalhes.

### 1.2 Requisitos Não Funcionais

Os requisitos não funcionais são aqueles requisitos que impactam na forma como o software será construído, especificando restrições e premissas que impactam do ponto de vista da qualidade como os requisitos funcionais deverão ser implementados. Veja os requisitos não funcionais do SPWS:

| Requisito | Descrição | Classificação |
| --- | --- | --- |
| RNF001. Facilidade de uso | A interface deve ser de fácil uso, onde os signos estejam posicionados para facilitar a interatividade do sistema. | Importante |
| RNF002. Tempo de resposta | O objetivo do algoritmo é buscar eficiência no tempo de resposta, ou seja, ser capaz de processar os dados e gerar resultados de forma rápida e eficaz. | Importante |
| RNF003. Legitimidade dos dados | O sistema é capaz de fornecer informações precisas e confiáveis sobre projetos desenvolvidos no Scratch, oferecendo aos usuários dados relevantes e úteis para análise e tomada de decisão. | Importante |

> [!TIP]
> Você pode visualizar todos os requisitos não funcionais na **seção 1.2** com maior nível de detalhes.