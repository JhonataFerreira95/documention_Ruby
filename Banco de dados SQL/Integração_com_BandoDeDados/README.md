# Integração com Banco de dados ao Ruby

## índice

1. [Introdução conceitual](#integração-com-banco-de-dados-ao-ruby)
2. [O que é o SQL](#o-que-é-sql)
3. [SGBDs](#importância-de-sgbds)
4. [Criando Banco e tabelas](#banco-e-tabelas)
5. [Inserindo dados em nossa tabela](#inserindo-dados-em-uma-tabela)
6. [Integração com banco de dados](#intregação-com-banco-de-dados")

---

## Introdução conceitual de banco de dados

> A necessidade de ter um banco é para alocar os dados em algum lugar de fácil acesso, mantendo o mesmo seguro, já que antigamentoe por papel era comum perda de dados ou arquivos.

- Com já abordei mais do que o básico em [Modelagem de banco de dados](../Modelagem_BancoDeDados/README.md), aqui falarei de uma maneira mais breve e irei me aprofundar em assunto mais complexos como `ORM` por exemplo e integração do banco com a linguagem `Ruby`.

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

> O que é um `SGBD`? É um sistema de gestão de base de dados. Pacotes que utilizam o `SQL` para realizar consultas.

- Caterogias:

    - `SQL` - Relacional

    - `NoSQL` - Não Relacional

## Banco e tabelas

> Aqui irei fazer a crianção de um banco e algumas tabelas, sinta-se a vontade para selecionar o seu `SGBD`, escolhi o `postgres` e estou utilizando de `IDE` visual o `DataGrip`.

- Criação do banco:

    ```SQL

        CREATE DATABASE fliperama

    ```

- Criação da tabela:

    ```SQL

        CREATE TABLE jogos(
            id serial primary key,
            nome varchar(255) not null,
            ano date not null,
            nota_do_jogo double precision not null
        );

    ```

## Inserindo dados em uma tabela

> Novamente utilizei o `DataGrip` para inserir os dados e vamos utilizar um dos comandos `DML` do `SQL`.

- Iserindo dados:

    ```SQL

        INSERT INTO jogos(nome, ano, nota_do_jogo)
        VALUES(
            'Pragmata', '2026-05-03', 9.2
        ), (
            'Silksong', '2025-07-12', 9.8
        ), (
            'Cs2', '2023-07-02', 8.6
        );

    ```

## Intregação com banco de dados
    