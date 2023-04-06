### C1.1 O que é o sistema XXXXX?

O Scratch Projects Web Scraper (SPWS) é um projeto que tem como objetivo extrair dados estatísticos de um projeto público do Scratch. Esses dados incluem o número de estruturas de controle, operadores lógicos, sons e efeitos usados no projeto. Diferente do Doutor Scratch, que utiliza um sistema de pontuação para avaliar a qualidade do projeto, o SPWS foca em fornecer apenas o quantitativo dos recursos utilizados. O usuário pode acessar o site, apontar o ID de um projeto público do Scratch e obter as informações desejadas. O projeto utiliza tecnologias como Python, Scratch, Figma, Flask, React e SQLite para desenvolver as camadas de front-end e back-end, e se comunica com a API do Scratch para coletar os dados necessários.

### C1.2 O que são as entidades presentes no diagrama?

As entidades presentes no diagrama são o algoritmo e o usuário. 
- O algoritmo representa a parte lógica do sistema, responsável por processar os dados e fornecer resultados ao usuário. 
- Já o usuário é a entidade que interage com o sistema, fornecendo informações de entrada e recebendo as saídas geradas pelo algoritmo. Essas entidades são fundamentais para o funcionamento do sistema, já que sem a interação do usuário, o algoritmo não teria informações para processar e sem o algoritmo, o usuário não teria resultados relevantes para suas necessidades.

### C1.3 Como as entidades presentes no diagrama se relacionam para contribuir com o funcionamento do sistema?

As entidades presentes no diagrama se relacionam de forma a contribuir para o funcionamento do sistema. O usuário acessa o site e importa um projeto do Scratch, que é enviado para o back-end do sistema. A partir disso, o algoritmo é executado e processa os dados do projeto importado, gerando os resultados desejados. Em seguida, esses resultados são enviados de volta para o front-end do sistema, onde o usuário pode visualizá-los e utilizá-los para suas necessidades. Dessa forma, as entidades se relacionam de forma a garantir que o usuário tenha acesso aos resultados gerados pelo algoritmo de forma simples e intuitiva. O diagrama de entidades é fundamental para compreender e visualizar essas interações e garantir que o sistema funcione de forma eficiente e sem falhas.

### C1.4 Quais são os atores do sistema?

Os atores do sistema são o usuário, que acessa o site e importa um projeto do Scratch para que o algoritmo possa processá-lo e gerar os resultados desejados. Além disso, o algoritmo em si é um ator importante do sistema, pois é responsável por processar os dados do projeto e gerar os resultados finais. O diagrama de entidades ajuda a visualizar como esses atores se relacionam entre si e com as outras entidades do sistema para garantir o seu bom funcionamento.

### C1.5 Quais são os serviços externos ao sistema?

O **Scratch Projects Web Scraper (SPWS)** se comunica com os serviços externos ao sistema são aqueles que não são gerenciados pelo sistema em si, mas que são essenciais para o seu funcionamento. No caso desse projeto, um serviço externo importante é a API do Scratch. O usuário precisa informar o link do projeto do Scratch que deseja analisar, e o sistema utiliza a API para acessar e extrair os dados necessários para processamento. Dessa forma, o sistema depende da disponibilidade e qualidade da API do Scratch para funcionar corretamente.