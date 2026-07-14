# GitFlow

## índice

1. [O que é GitFlow?](#o-que-é-gitflow)
2. [Fluxo de trabalho](#fluxo-de-trabalho)
3. [Ramificações](#trabalhando-com-ramificações)
4. [Instalando o GitFLow](#instalando-o-gitflow)

---

## O que é `GitFlow`?

> É um modelo de ramificação para o `git` criado por **Vicente Drissen** em 2010. Ele organiza o cilco de vida do desenvolvimento em `branches` com funções específicas, separando o código de produção `main`, do ambiente de desenvolvimento `develop` e gerenciando lancçamentos e correções com segunraça.

---

## Fluxo de trabalho

> Fluxo de trabalho com `git`, uma estratpegia criada para melhorar a organização das `branches` dentro do repositório permitindo mais fluidez ao processo de novas `features`
e `releases`. É uma solução que permite um gerenciamento mais simples e rápido de equipes e projetos maiores, pois há uma grande quantidade de informações sendo enviadas ao repositório a todo tempo.

---

- O fluxo baseia-se em duas `branchs` principais que duram por todos projeto:

    - `main`:

        - Contém o código estável e pronto para produção.

    ---

    - `develop`:

        - Onde o códido para a próxima versão é acumulado e testado.

    ---

- E três branchs temporárias criados conforme a necessidade:

    - `feature`:

        - Para implementar novas funcionalidades. Sempre ramifica da `develop`.

    ---

    - `release`:

        - Para preparar um nova lançamento. É onde ocorrem ajustes finais e geração de `tags` antes de ir para a `main`, e `develop`.

    ---

    - `hotfix`:

        - Para correções urgentes direito na produção. Ramifica da `main` e é integrado na `main` e na `develop`1.
        
---

## Trabalhando com ramificações 

> Não é correto, do ponto de vista das boas práticas de utilização do `git`, que os `commits` sejam realizados na branch ``main/master`. Com certeza se tornará uma bagunça! O ideal então é que cada um deles crie `branches` para cada atualização nova que for desenvolver. Depois que for finalizada a tarefa, é feiot um `merge` na `brach` principal, na `main/master`.

---

- No `GitFlow`, funciona dessa forma, mas um pouco complexa e organizada e ajuda demais a visualizar melhor as tarefas que estão sendo realizadas;

    - Veja na imagem abaixo cada tipo de atividade realizada, é criada uma `branch` de desenvolvimento. Após a atividade ser realizada e revisada, é devolvida para a `branch` principal.

        ![fluxo](/Banco%20de%20dados%20SQL/Assets/gitflow.png)

--- 

## Instalando o `GitFlow`

> Aqui irei aborda como fazer a instalção do `GitFlow` no `Windows`.

---

- Teste para ver se o `GitFLow` já está instalado:

    ```bash

        git flow version

    ```

    - Se estiver instalado a saída vai ser algo como:
    
        ![flow](/Banco%20de%20dados%20SQL/Assets/gitflow%20install.png)

---

- Caso o `GitFLow` não esteja instalado, use o comando:

    ```bash

        curl -L https://raw.githubusercontent.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh | bash -s -- install stable

    ```

---

- Inicializando um projeto com `GitFlow`:

    ```bash

        git flow init

    ```

    - Isso é uma extensão do `git init`, não altera nada no conteúdo do repositório, apenas configura os nomes das `branches`(**`feature/, release/, hotfix/, etc`**). Ele já cria a `develop` automaticamente da main, então normalmente você não precisa criar a `develop` na mão com `git branch develop`(mas não tem problema se você já criou antes).

---

- `feature` para desenvolver novas funcionalidades:

    - Nasce da `develop` e volta pra `develop`:

        ```bash

            git flow feature start nome-da-feature

        ```

        - Após a criação, trabalhe nessa `breach` até finalizar a `feature`, após isso utilize comando:

            ```bash

                git flow feature finish nome-da-feature

            ```

        - Faz o `merge` de volta na `develop`, apaga a `brach` `feature/nome-da-feature` e retorna para `develop`.

        ---

        - Se quiser subir a `feature` pro repositório remoto antes de terminar(pra trabalhar em equipe):

            ```bash

                git flow feature publish nome-da-feature

            ```

        - E outra pessoa pode puxar com:

            ```bash

                git flow feature pull origin nome-da-feature

            ```

---