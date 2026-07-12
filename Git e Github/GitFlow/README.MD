# GitFlow

## índice

1. [O que é GitFlow?]


---

## O que é `GitFlow`?

> É um modelo de ramificação para o `git` criado por **Vicente Drissen** em 2010. Ele organiza o cilco de vida do desenvolvimento em `branches` com funções específicas, separando o código de produção `main`, do ambiente de desenvolvimento `develop` e gerenciando lancçamentos e correções com segunraça.

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