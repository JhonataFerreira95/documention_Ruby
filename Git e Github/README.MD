# Git e Github

## índice

1. [Introdução](#introdução)
2. [Conceitos](#conceitos)
3. [Básico do Git](#básico-do-git)
4. [Boas práticas no Git](#boas-práticas)
5. [Branches](#branches)

## Introdução

- O que é `Git`?

    - `Git` é um sistema de controler de versão de software criado pelo `Linus Torvalds` para gerenciamento do código do `Linux`.

    - Além de ajuda os desenvolvedores a colaborar entre si, guarda um hístorico de alterações e reverter para versões anteriores se necessário.

## Conceitos

- `Repositório:`

    - Como nos referimos ao projeto como um todo, o diretório raiz a partir de onde serão monitorados todas as alterações.

- `commit:`

    - É o ato de salvar uma ou mais alerações no código e também pode ser referir ao conjuto dessas alterações

- `Working tree:`

    - É o espaço de trabalho onde você faz modificações nos arquivos do sue projeto. Quando você edita, cria ou deleta arquivos, essas mudançãs acontecem no `working tree`.

- `Staging`

    - É a área de preparação onde as alterações são separadas para serem salvas em um commit, ou seja, elas permitem escolher exatamente o que será salvo.

- `Branches:`

    - São ramificações que podemos criar a partir de um ponto histórico do projeto para trabalhar paralelamente, assim é possível trabalhar sem afetar a ramificação principal.

    - Todo repositório precisa de pelo menos uma `branch`, para servir como principal(Geralmente chamada de `main` ou `master`)

## Básico do Git

- `git init:`

    - Para inicializar um projeto com `Git`, utilizamos o comando `git init` no terminal do diretório desejado.

    - Exemplo na prática:

        ```git

            git init

        ```

- `git status:`

    - Assim que modificamos um arquivos, para checarmos se os arquivos foram adicionado `git` utilizamos o comando
    utlizamos o comando `git status`, assim ele nos mostra quais arquivos foram modificados, quais foram salvo e quais estão pendende para ser salvo.

    - Exemplo na pratica:

        ```git

            git status

        ```

    - Resultado: 

        ![Git status](../Banco%20de%20dados%20SQL/Assets/git_status.png)

        - Observa-se que o arquivo foi modificado mas não foi salvo.

- `git add:`

    - Para adicionarmos um arquivo ao git utilizamos o comando `git add <nome do arquivo>` ou `git add .`, o `.` após o `add` significa que é para adicionar todos os arquivos que foram modificado no diretório.

    - Exemplo na prática:

        ```git

            git add .

        ```

    - Resultado: 

        ![Git add](../Banco%20de%20dados%20SQL/Assets/git_add.png)

        - Observa-se que utilizei o `git add .` para adcionar todos os arquivos modificados e após para confirma que tudo que foi modificado foi adicionado utilizei o comando `git status` para checar que está tudo ok.

- `git restore --staged:`

    - Para desfazer um `git add .<ou nome do arquivo>` utilizamos o `git restore --staged .<ou nome do arquivo>`.

    - Exemplo na prática:

        ```git

            git restore --staged .

        ```
    - Resultado:

        ![Git restorage](../Banco%20de%20dados%20SQL/Assets/git_restorage.png)

        - Observa-se que utilizei o comando `git status` para checar as modificações e após utilizei o `git add .` para adicionar todos os arquivos modificados após isso utilizei o `git restore --staged .` para remover todos os arquivos que foram adicionados com o `git add .`.

- `git commit:`

    - O `git commit` registra todas as modificações no repositório local antes de serem enviadas para repositório remoto.

    - Exemplo na prática:

        ```git

            git commit -m "adicionado alterações"

        ```

    - Resultado: 

        ![git commit](../Banco%20de%20dados%20SQL/Assets/git_commit.png)

        - Observa-se que utilizei o `git add .` e após chequei com `git status` se as altrações foram feitas, finalzei salvando com `git commit -m "adicionado alterações"`.

        - Vale ressaltar que o `git commit` só funciona se você adiconar as alterações feitas antes de usa-lo, o `-m` após `git commit` é referente a sua `branch main` e o `develop`é para onde o commit foi enviado, ou seja a a branch develop.

- `git log:`

    - O `git log` serve para ver os históricos de `commit` no `git`.

    - Exemplo na prática:

        ```git

            git log

        ```

    - Resultado:

        ![git log](../Banco%20de%20dados%20SQL/Assets/git_log.png)

        - Observa-se que utilizei o comando `git log` para verificar o histórico de `commits` do meu repositório.

- `git diff:`

     - O `git diff` mostra as alterações entre diferente `commits`, entre um `commit` e a `working tree`.

     - Exemplo na prática:

        ```git

            git diff

        ```

    - Resultado:

        ![git diff](../Banco%20de%20dados%20SQL/Assets/git_diff.png)

        - Aqui utilizamos o ´git diff´ para ver as modificações que estão pendentes em determinados arquivos.

## Boas Práticas

- Nomear os `commits` com cuidado:

    - Menssagens de `commit` bem escritas e pragmática ajudam a entender o que foi alterado e por quê.

    - Obedeça os padrões impostos pelo seu time.

    - Conheça as convenções de nomeclatura de `commits`:

        [Convenções](https://www.conventionalcommits.org/pt-br/v1.0.0/)

- Revise mudanças:

    - Ajuda a evitar `commits` de código incompleto ou errado.

    - Use o `git diff` para ver as mudanças que serão commitadas e `git status` para ver os arquivos modificados.

- Commits pequenos e frequentes:

    - São fáceis de revisar, testar e reverter se necessário.

    - Tente fazer `commits` cade vez que você completar uma pequena funcionalidade ou correção.

- Tipos de versões semântico:

    - `Major(Versão principal):`

        - Indicada pela primeira parte do número da versão. Esta versão inclui mudanças significativas, grandes novas funcionalidades ou reestruturações que podem quebrar a compatibilidade com versões anteriores.

    - `Minor(Versão secundária):`

        - Indicada pela segunda parte do número da versão. Esta versão adiciona funcionalidades ou melhorias novas, mas mantém a compatibilidade com versões anteriores.

    - `Patch(Correções de bugs):`

        - Indicada pela terceira parte do número da versão. Esta versão é focada na correção de bugs e pequenas melhorias que não afetam a compatibilidade com versões anteriores.

## Branches

- O que são `branches no git`?
    
    - O que são `branches`? São ramificações que permitem trabalhar em diferentes linhas de desevolvimento dentro de um mesmo repositório.

    - Cada `branch` pode conter uma série de `commits` independentes, permitindo que desenvolvedores trabalhem em funcionalidades ou correções sem intefetir na `branch` principal.

- Por que usar `branches`?

    - Permite isolar o trabalho em funcionalidades novas ou correções de bugs, facilitando o desenvolvimento paralelo.

    - Ajudam a manter o historico de desevolvimento organizado e claro.

    - Facilitam a colaboração entre desenvolvedores, permitindo que cada um trabalhe em sua própria `brach` e depois integre(`merge`) as mudanças.

- Conceitos fudamentais sobre `branches:`

    - `Branch principal:`

        - Normalmente chamada de `main` ou `master`, é a linha principal de desenvolvimento onde o código mais estável é mantido.

    - `Brach de funcionalidade:`

        - Uasada para desenvolver uma nova funcionalidade ou melhoria, é criada a partir da `branch` principal e, depois de finalizada, suas mudanças são integradas de volta à `branch` principal.

    - `Branch de correção:`

        - Usada para corrigir bugs, funciona de maneira similar à `branch` de funcionaldiade, mas fora em resolver problemas específicos.

- Trabalhando com `branches:`

- Para criar uma nova `branch` utilize o:

    ```git

        git branch nome-da-branch

    ```

- Para mudar de uma `branch` para outra utilize o:

    ```git

        git checkout -b nome-da-branch

    ```

    - Você tanbém pode usar o `git checkout -b nome-da-branch` para criar e mudar para a nova branch em um único comando.

- Use para ver a lista de `branch`:

    ```git

        git branch

    ```

- Para integrar mudanças de uma `branch` para outra, use o:

    ```git 

        git merge nome-da-branch
    
    ```

    - Este comando aplica as mudanças da `branch` especificada na `bracnh` atual.


