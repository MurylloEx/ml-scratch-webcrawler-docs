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

Os requisitos não funcionais são aqueles requisitos que impactam na forma como o software será construído, especificando restrições e premissas que impactam do ponto de vista da qualidade como os requisitos funcionais deverão ser implementados. Veja os requisitos não funcionais do **XXXXX**:

| Requisito | Descrição | Classificação |
| --- | --- | --- |
| RNF001. Tempo de Resposta | O aplicativo deverá apresentar tempos de resposta inferiores a 1000 ms, de forma a apresentar um carregamento suficientemente rápido. | Importante |
| RNF002. Usuário Online | O aplicativo deverá permitir a conexão de até 100 usuários online simultaneamente. | Importante |
| RNF003. Período Ativo | O aplicativo deve permanecer online 24 horas por dia, 7 dias por semana, com tolerância a interrupções de no máximo 2 horas em situações excepcionais para manutenções ou atualizações planejadas. | Importante |
| RNF004. Compatibilidade | O sistema deve essencialmente funcionar na plataforma Android, visto que o iOS é uma plataforma cara e não é acessível para o momento. | Essencial |
| RNF005. Proteção contra ataques DDoS | O sistema deverá utilizar CloudFlare para proteção contra ataques DDoS. | Desejável |
| RNF006. Criptografia | O sistema deverá utilizar o HTTPS (Hyper Text Transfer Protocol Secure) como forma de criptografia. | Importante |
| RNF007. Autenticação | O usuário deve ser capaz de realizar login através de sua conta Google utilizando o serviço SSO (Single Sign-On) da Google. | Essencial |
| RNF008. Documentação das APIs REST | O endpoint do aplicativo deve ser bem documentado para facilitar integrações futuras com outros sistemas ou correções de implementações no front-end. | Importante |

> [!TIP]
> Você pode visualizar todos os requisitos não funcionais na **seção 1.2** com maior nível de detalhes.