### 1.1.1 Requisitos Funcionais

Os requisitos funcionais determinam as funcionalidades que o software deve ter para ser útil para o cliente ou utilizador do sistema. As funcionalidades ou ações são consideradas funções, objetivos que o sistema deve permitir que o usuário execute dentro do sistema. Veja os requisitos funcionais do SPWS:

| Requisito | Descrição | Classificação |
| --- | --- | --- |
| RF001. Extrair identificadores e metadados dos projetos do Scratch | O algoritmo deverá ser capaz de extrair informações relevantes dos projetos. | Essencial | 
| RF002. Obter as informações dos blocos utilizados em cada um dos projetos | O algoritmo deverá ser capaz de obter, através de um JSON, os blocos dos projetos. | Essencial | 
| RF003. Realizar a contagem dos tipos blocos utilizados | O algoritmo deverá ser capaz de contar os tipos de blocos para classificá-los. | Importante | 
| RF004. Baixar projetos que já foram armazenados | O usuário deverá ser capaz de baixar, através de um CSV, todos os projetos já armazenados no banco. | Importante |
| RF005. Realizar pesquisa de um projeto | O usuário deverá ser capaz de pesquisar por um projeto específico através de um link. | Essencial |
| RF006. Exibir dados dos projetos | O usuário deverá ser capaz de visualizar informações gerais sobre cada um dos projetos, após sua pesquisa. | Importante |

| RF001 | Extrair identificadores e metadados dos projetos do Scratch |
| --- | --- |
| Descrição: | O algoritmo deverá ser capaz de extrair informações relevantes dos projetos. Os metadados do Scratch são informações que acompanham um projeto criado nesta plataforma de programação visual. |
| Atores: | Algoritmo |
| Prioridade: | Essencial |
| Entradas e pré-condições: | Entradas: Parâmetro target. Pré-condições: Não possui pré condição. |
| Saídas e pós-condições: | Saídas: Estatística do projeto. Pós-condições: Não possui pós condições. |


| RF002 | Obter as informações dos blocos utilizados em cada um dos projetos |
| --- | --- |
| Descrição: | O  algoritmo deve ser capaz de interpretar corretamente as informações contidas no JSON e extrair os dados referentes aos blocos utilizados no projeto. Esses dados podem ser utilizados posteriormente para análise e processamento, permitindo a criação de novos projetos com base nas informações coletadas. |
| Atores: | Algoritmo |
| Prioridade: | Essencial |
| Entradas e pré-condições: | Entradas: Conjunto de targets. Pré-condições: Não possui pré condição. |
| Saídas e pós-condições: | Saídas: Estatísticas dos projetos. Pós-condições: Não possui pós condição. |


| RF003 | Realizar a contagem dos tipos blocos utilizados |
| --- | --- |
| Descrição: | O algoritmo deve ser capaz de realizar a contagem de forma precisa e eficiente, levando em consideração as variações e combinações de cada tipo de bloco. |
| Atores: | Algoritmo |
| Prioridade: | Importante |
| Entradas e pré-condições: | Entradas: Parâmetro target. Pré-condições: Não possui pré condição. |
| Saídas e pós-condições: | Saídas: Quantidade e nome de frequência de utilização dos blocos. Pós-condições: Não possui pós condições. |


| RF004 | Baixar projetos que já foram armazenados |
| --- | --- |
| Descrição: | O usuário pode obter rapidamente todos os projetos armazenados no banco de dados em um formato que pode ser facilmente importado para outras ferramentas de análise de dados. |
| Atores: | Usuário |
| Prioridade: | Importante |
| Entradas e pré-condições: | Entradas: Não possui entradas. Pré-condições: Não possui pré condição. |
| Saídas e pós-condições: | Saídas: Todos os projetos armazenados. Pós-condições: O Usuário receberá um CSV. |


| RF005 | Realizar pesquisa de um projeto |
| --- | --- |
| Descrição: | O usuário pode simplesmente copiar e colar o link do projeto desejado e obter acesso imediato a ele. |
| Atores: | Usuário |
| Prioridade: | Essencial |
| Entradas e pré-condições: | Entradas: Link do projeto Scratch. Pré-condições: Ter o ambiente rodando localmente. |
| Saídas e pós-condições: | Saídas: Informações gerais do projeto. Pós-condições: O usuário visualizará uma tela contendo as informações do projeto. |


| RF006 | Exibir dados dos projetos |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar informações gerais sobre cada um dos projetos encontrados, como título, autor, data de criação, entre outros dados relevantes. |
| Atores: | Usuário |
| Prioridade: | Importante |
| Entradas e pré-condições: | Entradas: Realizar a pesquisa. Pré-condições: Possuir link do projeto Scratch. |
| Saídas e pós-condições: | Saídas: Não possui saídas. Pós-condições: O usuário visualizará uma tela contendo as informações do projeto. |
