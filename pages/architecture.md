### • Como a arquitetura está sendo exibida?

A arquitetura está sendo expressa por meio deste documento através da abordagem de diagramação de arquitetura de software C4 Model. A documentação deste projeto está sendo dividida em 4 tópicos, sendo o quarto tópico contendo 4 níveis conforme a estrutura hierárquica a seguir:

```
\ Arquitetura do Software (Esta página)
  \-> Requisitos do sistema
  \-> Implantação
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
| C1. Visão Geral | Nesta seção você verá o primeiro nível do C4 Model, sendo uma perspectiva de contexto da arquitetura do sistema. |
| C2. Sistema | Nesta seção você verá o sistema como um todo do ponto de vista de contâineres, os quais se relacionam. Nessa visão são expostos os relacionamentos entre esses contâineres para garantir que a arquitetura funcione. |
| C3. Algoritmo e Solução | Nesta seção estão expressos os detalhes de como o algoritmo funciona e como ele pode ser usado para resolver problemas semelhantes. |
| Níveis C4 | Por fim, mas não menos importante, as seções C4 abordam, cada uma, visões arquiteturais seguindo a ideia de Philippe Kruchten. Neste nível, é exigido conhecimento técnico em programação para entender as ilustrações e diagramas UML que mostram os casos de uso que realizam a arquitetura vigente. |

Ao longo de toda esta documentação, você verá em detalhes como a arquitetura é dividida, suas tecnologias e, claro, como elas se relacionam. A documentação detalhada da arquitetura de um sistema ou software é fundamental para garantir o sucesso do projeto, a qualidade do código, a validação das funcionalidades, a manutenção e suporte contínuos. É, portanto, uma parte crucial do processo de desenvolvimento de qualquer sistema ou software.

### • O que é o C4 Model?

O modelo C4 é uma abordagem fácil de aprender e amigável ao desenvolvedor para diagramação de arquitetura de software. Bons diagramas de arquitetura de software auxiliam na comunicação dentro/fora das equipes de desenvolvimento/produto de software, integração eficiente de novos funcionários, revisões/avaliações de arquitetura, identificação de riscos (por exemplo, tempestade de riscos), modelagem de ameaças (por exemplo, STRIDE/LINDDUN), etc. Ele foi criado por Simon Brown e é baseado na abordagem 4+1 de Philippe Kruchten e também no UML.

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

2. [Scratch](https://scratch.mit.edu/)<br>
Scratch é uma linguagem de programação visual desenvolvida pela MIT Media Lab para crianças e jovens iniciantes na programação. Ela permite que os usuários criem animações, jogos, histórias interativas e outros projetos digitais, usando blocos de código coloridos que podem ser arrastados e soltos em uma interface gráfica amigável e intuitiva. O Scratch é uma excelente ferramenta para introduzir as crianças e jovens ao mundo da programação de forma lúdica e divertida. Com sua interface visual intuitiva, ampla comunidade e recursos educacionais, o Scratch oferece uma forma agradável e eficaz de desenvolver habilidades importantes de programação e pensamento computacional.

3. [Figma](https://www.figma.com/)<br>
O Figma é uma ferramenta de design gráfico baseada em nuvem, que permite que os usuários criem e colaborem em projetos de design de forma rápida e fácil. É amplamente usado por designers de UI/UX, mas também pode ser usado por qualquer pessoa que queira criar um design gráfico. Com sua capacidade colaborativa e de criação de protótipos interativos, é uma escolha popular para equipes de design e profissionais que buscam uma ferramenta poderosa para suas necessidades de design.

4. [Flask](https://flask.palletsprojects.com/en/2.2.x/)<br>
O Flask é um framework de desenvolvimento web em Python que permite criar aplicativos web rapidamente e de forma fácil. Ele é leve, flexível e vem com uma ampla gama de recursos e extensões que podem ser usados para criar aplicativos web escaláveis e personalizados. Algumas das principais características do Flask incluem rotas de URL simples, templates Jinja2 para renderização de HTML, suporte a sessões de usuário e cookies, suporte a extensões de terceiros para tarefas específicas, suporte a bancos de dados, dentre outros.

5. [React](https://react.dev/)<br>
O React é uma biblioteca JavaScript de código aberto usada para criar interfaces de usuário dinâmicas e interativas para aplicativos web e móveis. Ele foi desenvolvido pelo Facebook e é amplamente utilizado por desenvolvedores em todo o mundo. O React é uma biblioteca JavaScript popular e altamente flexível usada para criar interfaces de usuário escaláveis, reutilizáveis e de alto desempenho para aplicativos web e móveis. Ele é amplamente utilizado e apoiado pela comunidade de desenvolvedores, tornando-o uma excelente escolha para projetos de desenvolvimento de software.

6. [SQLite](https://www.sqlite.org/)<br>
SQLite é uma biblioteca de linguagem C que implementa um mecanismo de banco de dados SQL pequeno, rápido, independente, de alta confiabilidade e com todos os recursos. SQLite é o mecanismo de banco de dados mais usado no mundo. O SQLite está embutido em todos os telefones celulares e na maioria dos computadores e vem dentro de inúmeros outros aplicativos que as pessoas usam todos os dias.

### • Proposta do algoritmo

O Scratch Projects Web Scraper (SPWS), uma ferramenta de software projetada especificamente para extração automatizada de dados de projetos do Scratch. O SPWS é uma ferramenta poderosa e flexível de web scraping que pode navegar pelo repositório de projetos do Scratch, identificar projetos relevantes com base em critérios definidos pelo usuário e extrair dados relevantes dos arquivos do projeto para análise adicional. Isso permite que pesquisadores e educadores reúnam informações de maneira eficiente sobre práticas de programação, resultados de aprendizado e interações comunitárias no ecossistema do Scratch.

O desenvolvimento do SPWS representa um passo importante no suporte à pesquisa e análise em larga escala baseadas em dados na comunidade do Scratch. Ao fornecer uma solução automatizada e personalizável para extrair dados de projetos do Scratch, o SPWS permite que pesquisadores e educadores obtenham informações valiosas sobre como os usuários aprendem programação, a eficácia de várias estratégias de ensino e o impacto da plataforma Scratch no pensamento computacional e na criatividade.


