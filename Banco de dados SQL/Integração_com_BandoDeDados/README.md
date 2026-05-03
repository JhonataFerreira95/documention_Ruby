# Integração com Banco de dados ao Ruby

## índice

1. [Introdução conceitual](#integração-com-banco-de-dados-ao-ruby)
2. [O que é o SQL](#o-que-é-sql)
3. [SGBDs](#importância-de-sgbds)

---

## Introdução conceitual de banco de dados

> A necessidade de ter um banco é para alocar os dados em algum lugar de fácil acesso, mantendo o mesmo seguro, já que antigamentoe por papel era comum perda de dados ou arquivos.

- Com já abordei mais do que o básico em [Modelagem de banco de dados](../Modelagem_BancoDeDados/README.md), aqui falarei de uma maneira mais breve e irei me aprofundar em assunto mais complexos como `ORM` por exemplo.

- Coleção de dados relacionados.

    - Uma coleção lógica e coerente de dados algum significado inerente.

    - Projetado, construído e povoado por dados com um propósito.

## O que é `SQL`?

> Linguagem de consulta estrutura, e é uma linguagem de consulta para os [`SGBDs`](#importância-de-sgbds) relacionais.

- Manipulação de dados(`DML`):

    - Inserir dados

    - Selecionar dados

    - Atualizar dados

    - Excluir dados

- Manipulação de dados(`DDL`):

    - Criar estrutura

    - Alterar estrutura

    - Remover estrutura

- Manipulação de dados(`DCL`):

    - Concede permissões

    - Revogar permissões

- Manipulção de dados(`DTL`):

    - Efetiva uma transação(`commit`)

    - Descarta uma transação(`rollback`)

## Importância de `SGBDs`

> 
