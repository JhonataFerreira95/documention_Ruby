# Docker

## índice

1. [Conceitos Docker](#conceitos-docker)
2. [Diferenças de Docker e Máquina virtual](#diferenças-entre-docker-e-máquina-virtual)
3. [Vantagens de utilizar o Docker](#vantagens-de-utilizar-o-docker)
4. [Recursos fundamentais do Docker](#recursos-fundamentais-do-docker)
5. [Docker vs Kubernets](#docker-vs-kubernetes)
6. [Segurança de containers](#segurança-de-containers)
7. [Comandos do Docker](#comandos-do-docker)

---

## Conceitos `Docker`

> Docker é uma plataforma aberta, cuja a função é criar, execultar e implantar aplicações em ambientes virtuais isolados. Seu objetivo é disponibilizar uma aplicação o mais rápido possível.

---

> Um container é um ambiente isolado, que fica instalado em um servidor e divide um único host. Podemos dizer que o container é o encapsulamento de todas as dependências necessárias para rodar a aplicação. Proporcionar um ambiente, que faz com que as operações e configurações nele realizadas não afetem nem são afetadas por outro container. Permite que mútilpos sistemas isoladas sejam executados dentro de um sistema operacional real. 

---

> Configurar um ambiente de densenvolvimento é uma tarefa muitas vezes demorada e complicada, pois é necessário responder algumas perguntas antes de iniciar: Qual é a versão do banco de dados? Qual é a versão das bibliotecas utilizadas? Qual é a versão do gerenciador de pacotes, etc. Muitas vezes uma mínima diferença entre essas versões pode acabar causando algum conflieto, o que vai levar mais algum tempo para ser encontrado e resolvido.

---

> Quando utilizamos o docker, fazemos essa configuração apenas uma vez dentro do container e depois replicamos para os demais membros da equipe ou para máquina de produção à medida que for necessário. Pode ser utilizado com qualquer tipo de linguagem de programação, pacotes e dependências.

---

> Ele pode ser utilizado com todos os sitemas operacionais, porém seu desempenho fica muito maior quando utilizando no `linux`, pois ele foi feito para o `linux` mas irei utilizar no `Windows` com o software `Docker desktop`. 

---

## Diferenças entre `Docker` e `Máquina virtual`

> Para criamos uma máquina virtual, precisamos instalar um sistema operacional do zero, como se estivéssemos configurando um novo computador. E para que todas elas subam, precisam passar por um processo de `boot` de inicialização. Além de ser necessário manter a rotina de atualização características do Sistema operacional.

---

> Todo esse proceso acaba sendo mais custoso, não só em termos de consumo de banda, de processamento, mas de tempo também. Tempo de configuração, de manutenção e de processamento. O container é entendido pela máquina como um processo, que fica encapsulado, de modo que seus processos interno não interfiram em outros processos também não inferfiram em seu funcionamento. Ao invés de subir vários sistemas operacionais, podemos subir apenas processos que vão simular o sistema operacionais.

---

## Vantagens de utilizar o `Docker`

> A principal vantagem é garantir que o ambiente de desnvolvimento seja idêntico ao de produção e que todos da equipe estejam trabalhando com o mesmo ambiente.Eliminando os casos de incompatibilidade entre ambientes que ocasiona aquele velho e conhecido problema: "Na minha máquina funciona", porque nesse caso, todos estão utilizando "a mesma máquina",  um ambiente idêntico.

- Garante que todos utilizem o ambientes idênticos 

- Processo de instalação e configuração é muito mais rápido

- Leves, portáteis e facilitam o densenvolvimento(Sem preocupações com configurações de ambiente)

- Utilizam menos memória que as máquinas virtuais e são inicializados e interrompidos de forma mais rápida

---

## Recursos fundamentais do `Docker`

> Aqui irei aborda recursos importante para fazer o `Docker` funcionar, que fazem parte do mesmo.

- `Dockerfile`:

    - É um arquivo de definição, onde é possível preparar o ambiente a partir de um script de execução. É um arquivo de texte que contém instruções, comandos e passos que ao invés de serem execultado manualmente, o `Docker` o execulta atra´veis do comando `docker build` e encapsula cada camada dentro da imagem.

    - Entendo como esse arquivo funciona, precisamos respeitar a ordem correta de formatação para que o `build` seja feito de forma correta.

---

- `Docker Hub`:

    - É um repositório público da `Docker`, onde estão disponibilizadas imagens de contêiners criados por várias empresas. É como se fosse um `github` de imagens `Docker`.

    - Alguma imagens possuem um selo `Official Image`, que são imagens oficiais de determinadas tecnologias.

    - Se você fizer o login no `Docker hub`, no seu terminal, e se executar um `docker push nome_da_imagem` você sobre no `Docker hub`. Logo em seguida, qualquer pessoa que acessar o endereço da sua imagem, poderá baixá-la.

---

- `Docker Compose`:

    - É um orquestrador de container da `Docker`. Através de um arquivos chamado `docker-compose`(escrita em `YAML`), semelhante ao `dockerfile`, nós podemos gerenciar o comportamento dos containers. Ele facilita e agiliza o gerencimaneto de multiplos containers, realizando o isolamento de um grupo de containers, separando-aos por tipo de projeto, por exemplo. Imagine uma situação em que precisássemos executar vários containers de uma única vez e cada um com propósito distinto. Seria bastante trabalhoso executar o comando de subir um container (`docker run`) várias vezes e incluir os parâmetros para cada um isoladamente e manualmente.

    - Podemos inserir nesse aquivo o comportamento que determinados containers terão dependendo de saída da aplicação. Por exemplo, em caso de erro no banco de dados, o comportamente a ser adotado é reiniciá-lo ou subir outro bando de dados( que pode estar em outro container).

--- 

## `Docker` vs `kubernetes`

> É bastante comum que se confunda `Docker` com `Kubernetes`, porém as duas plataforma possuem propósiotos diferentes.

- `Docker`:

    - É uma plataforma que constroí, executa e distribui containers. Faz o encapsulamento de apliacações e as isola de outros ambientes, tornando o processo de configuração e deploy muito mais simples e rápidos.

- `Kubernetes`:

    - É uma plataforma de orquestração de containers, que trabalha junto com o `Docker`. Ele é utilizado para criar e gerenciar `clusters` de containers. Além disso, realiza o controle de como e onde certos containers serão executados, permitindo o agrupamento de containers para que sejam executados e monitorados através de um único painel de controle, viabilizando uma orquestração escalonável de aplicativos em nuvem. Da mesma forma, torna possível o agrupamento de recursos de container por permissão de acesso.

--- 

## Segurança de containers 

> Considerando que é cada vez mais comum utilizar ambientes com um ou múltiplos containers, pois eles trazem diversas vantagens tanto na arquitetura quanto no desempenho das aplicações, precisamos destacar alguns cuidados que devemos nos atentar ao utilizar containers na nossa estrutura.

---

- Utilize imagens confíaveis:

    - Como vimos, conseguimos baixar variados tipos de imagens de diversas empresas diferentes através do `DockerHub` ou de outros desenvolvedores, e uma das funcionalidades básicas dos containers, é justamente essa: criar a partir de imagens existentes. Só de ler isso você já pode imaginar o que pode acontecer; Baixar uma imagem com software maliciosos ou imagem mal condifuradas que podem prejudicar o funcionamento do seu container ou da sua arquitetura como um todo, reduzindo o desempenho ou apresentando comportamentos inesperados. Para diminuir esse risco, além de baixar imagens confiáveis, que venham do `DockerHub`, ou de desenvolvedores confiáveis, precisamos utilizar o recurso do `Docker` que é o `content trust`, que possibilita a criação de assinaturas digitais para os dados que são recebidos e enviados, o que permite a verificação de integridade das imagens. Quando esse recurso é habilitado, ao tentar baixar uma imagem não assinada, uma mensagem de erro é exibida, indicando que aquele conteúdo náo é confiável.

---

- Atualize constatemente e corretamente seus containers:

    - É importante revisar o `Dockerfile` periodicamente para identificar possíveis atualizações necessárias, pois muitas delas são fundamentais para correção de falhas de seguranças ou de funcionamento de determinadas dependências.

---

- Cuidado com os previlégios de usuário de execução de containers:

    - É importante considerar que em todo sistema, não somente quando trabalhamos com `Docker`, precisamos manter o menor privilégio possível para os usuários e para as dependências que são utilizadas. No `Docker`, existe uma configuração chamada: `Modo Privilegiado`, que vem desabilitada por padrão, que permite o acesso root à recursos da máquina host. Então assegure-se que essa configuração não está habilitada. Rodar processos como superusuário ou em modo root pode viabilizar a exploração de vulnerabilidades por parte de um invasor que tente um acesso de dentro do container para fora, tendo acesso ao host, por isso, nunca devemos executar processos como root ou em modo privilegiado e garantir que os níveis de acesso estão sendo concedidos de forma consciente. 

--- 

## Comandos do `Docker`

> Aqui irei mostra como criar uma imagem docker, como definir as proriedades e como subir a imagem `docker`.

---

> Quando uso a nomeclatura `idcontainer` ou `nomedaimagem` significa que é o nome do seu container ou da sua imagem.

- Comandos de execução do docker:

    - Para parar um container:

        ```bash

            docker stop idcontainer

        ```

    ---

    - Interrompe a  abprutamente a execução de um container:

        ```bash

            docker kill idcontainer

        ```

    ---

    - Subir um container:

        ```bash

            docker start idcontainer

        ```

    ---

    - Dar pausa na execução:

        ```bash

            docker pause incontainer

        ```

    ---

    - Reabilitar um container pausado:

        ```bash

            docker upouse idcontainer

        ```

    ---

    - Reiniciar um container:

        ```bash

            docker restart idcontainer

        ```

    ---

    - Listar os containers que foram criados(em execução ou não):

        ```bash

            docker ps -a

        ```

    ---

    - Listar containers que estão em execução:

        ```bash

            docker ps

        ```

    ---

    - Verificar os logs de execuçãi do container:

        ```bash

            docker logs idcontainer

        ```

    ---

    - Excluir um container(não exclui o container em execução):

        ```bash

            docker rm -f idcontainer

        ```

    ---

    - Construir um container baseado em instruções inseridas no `docker-compose`:

        ```bash

            docker-compose build

        ```

    ---

    - Listar todas as imagens existentes na máquina, com `nome`, `id`, `data de criação` e `tamanho`:

        ```bash
            
            docker images

        ```

    ---

    - Acessar o modo interativo do container, ou seja, inicia o terminal para que seja possível interagir com ele:

        ```bash

            docker exec -it idcontainer bash

        ```

    ---

    - Acessar uma `url` dentro do container

        ```bash

            curl localhost:3000

        ```

    ---

    - Cria uma imagem do `docker` no mesmo local que o arquivo `dockerfile` se encontra:

        ```bash

            docker build -t nomedaimagem

        ```

    ---

    - Criar um container a partir da imagem:

        ```bash

            docker run nomedaimagem

        ```

    ---

- `Dockerfile`:

> O arquivo `docker` file é onde ficam a nossa depedências do projeto, versões e porta que serão utilizada para construri o ambiente.

---

- Especificar a versão que vamos utilizar do framework em nosso projeto:

    ```dockerfile

        FROM framework

    ```

---

- Indicar o diretório ond estão os arquivos da aplicação:

    ```dockerfile

        WORKDIR /path/aplication

    ```

---

- Copiar as depedências do projeto:

    ```dockerfile

        COPY depedências

    ```

---

- Indicar o que o `docker` tem que instalar:

    ```dockerfile

        RUN 

    ```

---

- Copiar todos os arquivos do diretório:

    ```dockerfile

        COPY . .

    ```

---

- Inidicar a definição da porta que será utilizada:

    ```dockerfile

        EXPOSE porta_desejada

    ```

- Comandos que ele precisará executar para rodar:

    ```dockerfile

        CMD ["npm", "run", "dev"]

    ```

- `Docker-compose`:

> O `Docker-compose` orquestra e rodar os múltiplos container feito a partir do `dockerfile` que cria um container específico.

--- 

> O `dockerfile` é responsável por criar a imagem e o `docker-compose` é resposável para definir serviços(banco de dadosm versão da linguagem e entre outras depedências).

---

- Explicando o `docker-compose`

    - A esturura do `docker-compose.yml`

        ```yaml

            version: '3'

            services:
            web: 
                build: .

                depends_on: 
                - xxxx

                ports:
                - "xxxxx:xxxxx"

                environment:
                DATABASE_URL: "xxxxxxx"
                NODE_ENV: "xxxxx"

                networks:
                - xxxxx

            db:
                image: xxxx
                environment:
                POSTGRES_PASSWORD: "xxxxx"
                ports:
                - "xxxx:xxxx"

                networks:
                - xxxxx

            networks:
            api-sequelize:
                driver: xxxx

        ```

    ---

    - Decompondo a estrutura:

        - `version`:

            - Define a versão do formado do arquivo `docker compose` que está sendo usada.

        ---

        - `networks: api-sequelize: driver: bridge`:

            - Cria uma rede virtual isolada chamada de `api`, usando o driver `bridge`. Isso permite que os contêines criados aqui conversem entre si usando os próprios nomes como endereço. (Aplicação acha o banco de dados chamados por `db`).

        ---

        - `build .`:

            - Diz ao `docker` para procurar um arqquivo `dockerfile`.

        ---

        - `depends_on: -db`:

            - Garante a ordem de inicialização. O contêiner do banco de dados(`db`) será iniciado antes do contêiner `web`.

        --- 

        - `ports: `:
            
            - Mapemaneto de portas. Libera o acesso à aplicação.

        ---

        - `environment`:

            - Variáveis de ambiente que o o `framework` vai ler via `process.env`.

        ---

        


