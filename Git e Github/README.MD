# Git e Github

## índice

1. [Introdução](#introdução)
2. [Conceitos]()
2. [Básico do Git](#básico-do-git)

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

