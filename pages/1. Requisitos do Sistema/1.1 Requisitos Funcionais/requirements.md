### 1.1.1 Requisitos Funcionais

Os requisitos funcionais determinam as funcionalidades que o software deve ter para ser útil para o cliente ou utilizador do sistema. As funcionalidades ou ações são consideradas funções, objetivos que o sistema deve permitir que o usuário execute dentro do sistema. Veja os requisitos funcionais do **XXXXX**:

| Requisito | Descrição | Classificação |
| --- | --- | --- |
| RF001. Exibir cursos de um determinado Campus | O usuário deverá ser capaz de visualizar quais cursos são ofertados pela UPE em todo o estado. | Essencial | 
| RF002. Transparecer informações de concorrência | O usuário deverá ser capaz de visualizar as informações de concorrência de cada um dos cursos ofertados pela UPE. | Essencial | 
| RF003. Indicar notas de corte | O usuário deverá ser capaz de visualizar as notas de corte de cada um dos cursos ofertados pela UPE. | Essencial | 
| RF004. Divulgar maiores notas do curso no ano anterior | O usuário deverá ser capaz de visualizar as maiores notas alcançadas em cada um dos cursos da UPE no ano anterior. | Essencial |
| RF005. Informar maneiras de ingressar | O usuário deverá ser capaz de visualizar quais são as maneiras possíveis de ingressar em um dos cursos da UPE. | Desejável |
| RF006. Apresentar informações sobre o curso | O usuário deverá ser capaz de visualizar informações gerais sobre cada um dos cursos ofertados pela UPE. | Desejável |
| RF007. Exibir perfil do curso | O usuário deverá ser capaz de visualizar informações detalhadas sobre como cada um dos cursos ofertados pela UPE é estruturado. | Desejável |
| RF008. Informar corpo docente | O usuário deverá ser capaz de visualizar o corpo docente de cada um dos cursos ofertados pela UPE. | Desejável |
| RF009. Detalhar docentes | O usuário deverá ser capaz de visualizar detalhes sobre cada um dos docentes dos cursos ofertados pela UPE. | Desejável |
| RF010. Apresentar áreas de atuação | O usuário deverá ser capaz de visualizar as possíveis áreas de atuação de cada um dos cursos ofertados pela UPE. | Desejável |


| RF001 | Exibir cursos de um determinado Campus |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar informações detalhadas sobre quais cursos são ofertados pela Universidade de Pernambuco em todo o estado. Uma lista deverá ser exibida na tela de seu respectivo Campus onde todos os cursos homologados deverão ser exibidos e o usuário poderá navegar por eles. |
| Atores: | Usuário Logado |
| Prioridade: | Essencial |
| Entradas e pré-condições: | Entradas: Não possui entradas. Pré-condições: Estar logado no aplicativo e ter entrado no campus desejado. |
| Saídas e pós-condições: | Saídas: Não possui saídas. Pós-condições: O Usuário é direcionado para a lista de cursos do campus escolhido. |


| RF002 | Transparecer informações de concorrência |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar as informações de concorrência de cada um dos cursos ofertados pela Universidade de Pernambuco (número de concorrentes por vaga, um gráfico de Bezier deverá ilustrar a evolução das notas ao longo do tempo). |
| Atores: | Usuário Logado |
| Prioridade: | Essencial |
| Entradas e pré-condições: | Entradas: Não possui entradas. Pré-condições: Estar logado no aplicativo e ter selecionado as notas de corte do curso. |
| Saídas e pós-condições: | Saídas: O número de concorrentes por vaga e o gráfico de evolução da concorrência; Pós-condições: O Usuário é direcionado para o detalhamento da concorrência do curso desejado. |


| RF003 | Indicar notas de corte |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar as notas de corte de cada um dos cursos ofertados pela Universidade de Pernambuco. São desejáveis os dados de nota de corte do SSA e nota de corte do SISU. Se possível, mas não obrigatoriamente, quando disponível o sistema deverá informar também os mesmos dados referentes a modalidade de concorrência cotista. |
| Atores: | Usuário Logado |
| Prioridade: | Essencial |
| Entradas e pré-condições: | Entradas: Não possui entradas. Pré-condições: Estar logado no aplicativo e ter selecionado as notas de corte do curso. Estar logado no aplicativo e ter pesquisado na aba “Já sei o que quero”. |
| Saídas e pós-condições: | Saídas: Os dados de notas de corte de ampla concorrência e dos cotistas; Pós-condições: O Usuário é direcionado para as notas de corte do curso desejado. |


| RF004 | Divulgar maiores notas do curso no ano anterior |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar as maiores notas alcançadas em cada um dos cursos da Universidade de Pernambuco no ano anterior (SSA e Sisu, Ampla Concorrência e Cotista). |
| Atores: | Usuário Logado |
| Prioridade: | Essencial |
| Entradas e pré-condições: | Entradas: Não possui entradas. Pré-condições: Estar logado no aplicativo e ter selecionado as notas de corte do curso. Estar logado no aplicativo e ter pesquisado na aba “Já sei o que quero”. |
| Saídas e pós-condições: | Saídas: Não possui saídas. Pós-condições: O Usuário é direcionado para o detalhamento das notas do curso desejado. |


| RF005 | Informar maneiras de ingressar |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar quais são as maneiras possíveis de ingressar em um dos cursos da Universidade de Pernambuco. |
| Atores: | Usuário Logado |
| Prioridade: | Desejável |
| Entradas e pré-condições: | Entradas: Não possui entradas. Pré-condições: Estar logado no aplicativo e ter selecionado um curso. |
| Saídas e pós-condições: | Saídas: Não possui saídas. Pós-condições: O Usuário é direcionado para a página do curso onde há os detalhes do mesmo. |


| RF006 | Apresentar informações sobre o curso |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar informações gerais sobre cada um dos cursos ofertados pela Universidade de Pernambuco, como: Carga horária total, período, duração, etc. |
| Atores: | Usuário Logado |
| Prioridade: | Desejável |
| Entradas e pré-condições: | Entradas: Preenchimento do teste vocacional. Pré-condições: Estar logado no aplicativo e ter selecionado um curso. |
| Saídas e pós-condições: | Saídas: Não possui saídas. Pós-condições: O Usuário é direcionado para a página em que há o detalhamento dos cursos. |


| RF007 | Exibir perfil do curso |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar informações detalhadas sobre como cada um dos cursos ofertados pela Universidade de Pernambuco é fundamentado. Deverão ser exibidos um ou mais tópicos abordando: Informações sobre as capacidades que os profissionais devem adquirir no curso; e Descrição do propósito desse curso, a ideologia por trás do curso. |
| Atores: | Usuário Logado |
| Prioridade: | Desejável |
| Entradas e pré-condições: | Entradas: Não possui entradas. Pré-condições: Estar logado no aplicativo e ter selecionado um curso. |
| Saídas e pós-condições: | Saídas: Não possui saídas. Pós-condições: O Usuário é direcionado para a página do curso onde há os detalhes do mesmo. |


| RF008 | Informar corpo docente |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar o corpo docente de cada um dos cursos ofertados pela Universidade de Pernambuco. Deverá ser exibida uma lista contendo cards com uma biografia curta do professor, sua foto (se houver) e a suas áreas em formatos de tags na parte inferior do card. |
| Atores: | Usuário Logado |
| Prioridade: | Desejável |
| Entradas e pré-condições: | Entradas: Não possui entradas. Pré-condições: Estar logado no aplicativo e ter selecionado um curso. |
| Saídas e pós-condições: | Saídas: Não possui saídas. Pós-condições: O Usuário é direcionado para a página onde o corpo docente do curso desejado é exibido. |


| RF009 | Detalhar docente |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar detalhes (nome, áreas, biografia completa, currículo Lattes e e-mail para contato) sobre cada um dos docentes dos cursos ofertados pela Universidade de Pernambuco. Neste requisito, uma tela contendo a foto em alta resolução e sua biografia completa devem ser exibidos. Além disso, deverá ser exibido um botão para visualizar o currículo Lattes do professor. |
| Atores: | Usuário Logado |
| Prioridade: | Desejável |
| Entradas e pré-condições: | Entradas: Não possui entradas. Pré-condições: Estar logado no aplicativo e ter selecionado um docente. |
| Saídas e pós-condições: | Saídas: Não possui saídas. Pós-condições: O Usuário é direcionado para a página onde há o detalhamento do docente. |


| RF010 | Apresentar áreas de atuação |
| --- | --- |
| Descrição: | O usuário deverá ser capaz de visualizar as possíveis áreas de atuação de cada um dos cursos ofertados pela Universidade de Pernambuco. |
| Atores: | Usuário Logado |
| Prioridade: | Desejável |
| Entradas e pré-condições: | Entradas: Não possui entradas. Pré-condições: Estar logado no aplicativo e ter selecionado um curso. |
| Saídas e pós-condições: | Saídas: Não possui saídas. Pós-condições: O Usuário é direcionado para a página do curso onde há os detalhes do mesmo. |
