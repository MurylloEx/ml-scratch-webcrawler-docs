# Arquitetura do Software

### • Como a arquitetura está sendo exibida?

A arquitetura está sendo expressa por meio deste documento através da abordagem de diagramação de arquitetura de software C4 Model. A documentação deste projeto está sendo dividida em 4 tópicos, sendo o quarto tópico contendo 4 níveis conforme a estrutura hierárquica a seguir:

```
\ Arquitetura do Software (Esta página)
  \-> Requisitos do sistema
  \-> Implantação
  \-> Limitações
  \-> C1. Visão Geral
    \-> C2. Sistema
      \-> C3. Algoritmo e Solução
        \-> C4. Visão de Caso de Uso
        \-> C4. Visão de Implementação
        \-> C4. Visão de Processo
        \-> C4. Visão Lógica
```

| Nome da seção | Propósito e breve descrição |
| --- | --- |
| Arquitetura de Software | Nesta seção você verá um pouco sobre o que é o C4 Model, qual a abordagem utilizada na documentação, a proposta do sistema e um pouco sobre cada tecnologia utilizada no software. |
| Requisitos do sistema | Nesta seção você terá um breve vislumbre sobre o que são esses requisitos e também como eles impactam na arquitetura proposta, sendo divididos em funcionais e não funcionais. |
| Implantação | Nesta seção você verá como o software é implantado, sua infraestrutura. |
| Limitações | Nesta seção você verá quais limitações impactaram no desenvolvimento e quais foram superadas. |
| C1. Visão Geral | Nesta seção você verá o primeiro nível do C4 Model, sendo uma perspectiva de contexto da arquitetura do sistema. |
| C2. Sistema | Nesta seção você verá o sistema como um todo do ponto de vista de contâineres, os quais se relacionam. Nessa visão são expostos os relacionamentos entre esses contâineres para garantir que a arquitetura funcione. |
| C3. Algoritmo e Solução | Nesta seção estão expressos os detalhes de como o algoritmo funciona e como ele pode ser usado para resolver problemas semelhantes. |
| Níveis C4 | Por fim, mas não menos importante, as seções C4 abordam, cada uma, visões arquiteturais seguindo a ideia de Philippe Kruchten. Neste nível, é exigido conhecimento técnico em programação para entender as ilustrações e diagramas UML que mostram os casos de uso que realizam a arquitetura vigente. |

Ao longo de toda esta documentação, você verá em detalhes como a arquitetura é dividida, suas tecnologias e, claro, como elas se relacionam. A documentação detalhada da arquitetura de um sistema ou software é fundamental para garantir o sucesso do projeto, a qualidade do código, a validação das funcionalidades, a manutenção e suporte contínuos. É, portanto, uma parte crucial do processo de desenvolvimento de qualquer sistema ou software.

### • O que é o C4 Model?

O modelo C4 é uma abordagem fácil de aprender e amigável ao desenvolvedor para diagramação de arquitetura de software. Bons diagramas de arquitetura de software auxiliam na comunicação dentro/fora das equipes de desenvolvimento/produto de software, integração eficiente de novos funcionários, revisões/avaliações de arquitetura, identificação de riscos (por exemplo, tempestade de riscos), modelagem de ameaças (por exemplo, STRIDE/LINDDUN), etc. Ele foi criado por Simon Brown e é baseado no na abordagem 4+1 de Philippe Kruchten e também no UML.

### • Como ler a documentação da forma correta?

Entenda que o C4 Model é uma abordagem minimalista para se expressar uma arquitetura de software com um conjunto rico de diagramas e recursos intertextuais. Dessa forma, você precisa imaginar a documentação como um mapa arquitetural. Neste mapa arquitetural você poderá dar um zoom e a cada nível descido aumentar o nível de granularidade das informações, sendo possível visualizar cada vez mais detalhes.<br>
No nível C1 você verá o sistema, do ponto de vista de contexto do sistema e da perspectiva de um usuário, não técnico ou técnico que seja de dentro ou de fora da equipe de desenvolvimento. No nível C2 você poderá ver o sistema do ponto de vista de containers e seus relacionamentos, da perspectiva de um usuário técnico de dentro ou fora da equipe de desenvolvimento, com capacidade de entender as informações expressas. No nível C3 você conseguirá enxergar o sistema do ponto de vista dos componentes deste containeres vistos no nível C2. Aqui, é necessário um alto grau de entendimento técnico, sendo o público alvo desenvolvedores, engenheiros de software. Já no nível C4, por fim, podemos enxergar toda a parte mais baixo nível do sistema, através do seu código sendo expresso por recursos visuais como diagramas, textos e imagens. Neste nível, há uma subdivisão em 4 visões arquiteturais de acordo com a abordagem de Philippe Kruchten onde o código é visto como uma composição de diferentes visões arquiteturais que contém certos conjuntos de diagramas. Essas visões arquiteturais são:<br>

1. **Visão de Caso de Uso**<br>
Descreve a arquitetura do sistema através do uso de Diagramas de casos de uso. Cada diagrama descreve sequências de interações entre os objetos e processos. São usados para identificar elementos de arquiteturra e ilustrar e validar o design de arquitetura.
2. **Visão de Implementação**<br>
Ilustra o sistema do ponto de vista do programador e se preocupa com o gerenciamento do projeto. Esta visão também é conhecida como visão de implementação. Usa o Diagrama de componentes ou Diagrama de pacotes. 
3. **Visão de Processo**<br>
Permite visualizar as partes dinâmicas do sistema, explicar os processos e como eles se comunicam, focando no comportamento do sistema. A visão de processo se encarrega da concorrência, distribuição, integração, performance e escalabilidade. O Diagrama de atividades é usado nesta visão.
4. **Visão Lógica**<br>
Se concentra na funcionalidade que o sistema disponibiliza para o usuároi final. Os diagramas UML usados para representar a visão lógica incluem: Diagrama de classes, Diagrama de comunicação e Diagrama de sequencia. 

### • Principais tecnologias envolvidas

1. [Python](https://www.python.org/)<br>
Python é uma linguagem de programação interpretada, de alto nível e de propósito geral, que foi criada por Guido van Rossum em 1991. É conhecida por sua simplicidade e facilidade de uso, tornando-a uma das linguagens de programação mais populares em uso hoje em dia. É utilizado em muitas áreas, incluindo desenvolvimento web, análise de dados, inteligência artificial, aprendizado de máquina, automação de tarefas, jogos e muito mais. É também uma das linguagens de programação mais utilizadas em ensino e pesquisa, pois é fácil de aprender e tem muitas bibliotecas de código aberto disponíveis.

2. [Jupyther](https://jupyter.org/)<br>
Jupyter é uma plataforma de código aberto para computação interativa em diversas linguagens de programação, incluindo Python, R, Julia e outras. A palavra "Jupyter" é uma combinação dos nomes das três linguagens de programação que inicialmente suportavam a plataforma: Julia, Python e R. Ele é uma plataforma poderosa e versátil para computação interativa em diversas linguagens de programação. É amplamente utilizado para análise de dados, prototipação de aplicativos, educação e colaboração em tempo real. A plataforma é apoiada por uma comunidade de desenvolvedores ativos que continuam a melhorá-la e expandi-la.

3. [Selenium](https://selenium-python.readthedocs.io/)<br>
Selenium é uma ferramenta de automação de testes de software que permite aos usuários testar aplicativos da web em vários navegadores e sistemas operacionais. Ele é usado principalmente para testar a funcionalidade e a aparência de aplicativos da web em diferentes configurações de ambiente. O Selenium Python é uma biblioteca com diversos métodos que ajudam na automação web. Em suma, as funções permitem controlar o funcionamento de uma página e a interação com ela de forma automática.

4. [Beautiful Soup](https://pypi.org/project/beautifulsoup4/#:~:text=Beautiful%20Soup%20is%20a%20library,and%20modifying%20the%20parse%20tree.)<br>
Beautiful Soup é uma biblioteca Python utilizada para extrair dados de arquivos HTML e XML. Ela é usada para fazer análise e scraping de dados de páginas web, facilitando o processo de extração de informações de páginas da web. A biblioteca é compatível com Python 2 e 3. O Beautiful Soup é uma biblioteca Python poderosa e fácil de usar que permite extrair informações de arquivos HTML e XML. É capaz de lidar com páginas da web malformadas e oferece uma série de recursos úteis para extrair informações específicas de uma página da web. É uma ferramenta valiosa para desenvolvedores e analistas que trabalham com dados da web.

5. [Pandas](https://pandas.pydata.org/)<br>
Pandas é uma biblioteca Python de análise de dados que oferece uma variedade de recursos para manipulação, análise e visualização de dados. A biblioteca Pandas oferece estruturas de dados flexíveis e de alto desempenho, como o DataFrame e a Series, que permitem armazenar e manipular dados em tabelas de várias dimensões. O DataFrame, em particular, é uma estrutura de dados poderosa que permite trabalhar com tabelas de dados com colunas nomeadas e indexação flexível. Ela é uma das bibliotecas Python mais utilizadas em projetos de ciência de dados e análise financeira, e é uma ferramenta indispensável para lidar com grandes volumes de dados e para realizar tarefas complexas de manipulação e análise de dados.

### • Proposta do algoritmo

O Scratch Projects Web Scraper (SPWS), uma ferramenta de software projetada especificamente para extração automatizada de dados de projetos do Scratch. O SPWS é uma ferramenta poderosa e flexível de web scraping que pode navegar pelo repositório de projetos do Scratch, identificar projetos relevantes com base em critérios definidos pelo usuário e extrair dados relevantes dos arquivos do projeto para análise adicional. Isso permite que pesquisadores e educadores reúnam informações de maneira eficiente sobre práticas de programação, resultados de aprendizado e interações comunitárias no ecossistema do Scratch.

O desenvolvimento do SPWS representa um passo importante no suporte à pesquisa e análise em larga escala baseadas em dados na comunidade do Scratch. Ao fornecer uma solução automatizada e personalizável para extrair dados de projetos do Scratch, o SPWS permite que pesquisadores e educadores obtenham informações valiosas sobre como os usuários aprendem programação, a eficácia de várias estratégias de ensino e o impacto da plataforma Scratch no pensamento computacional e na criatividade.


