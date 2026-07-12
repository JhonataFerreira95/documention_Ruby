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

    - `Develop`:

        - Onde o códido para a próxima versão é acumulado e testado.

    ---

- E três branchs temporárias criados conforme a necessidade:

    - `Feature`:

        - Para implementar novas funcionalidades. Sempre ramifica da `develop`.

    ---