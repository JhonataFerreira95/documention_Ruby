# Integração com Banco de dados ao Ruby

## índice

1. [Introdução conceitual](#introdução-conceitual-de-banco-de-dados)
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

## Integrão com banco de dados

> Aqui farei a integração do nosso `SGBD` com o `Ruby`, para começamos, crie um novo diretório para alocar o seu banco de dados, no meu caso irei alocar tudo em [Banco de dados SQL](/Banco%20de%20dados%20SQL/).

- Para conseguir trabalha com o `Ruby` e o `posgresSQL` e fazer nossa integração, precisamos utilizadr uma `gem` chamada `pg`. Irei utilizar o método de instalção em `gemfile`:

    ```bash

        gem 'pg', '~> 1.5', '>= 1.5.9'

    ```

    - Para que a gem funcione precisamos utilizar o comando `bundle`:

    ```bash

        bundle install gem_desejada

    ```
- Agora vamos ler nossos dados a partir de um arquivos `Ruby`.

    ```ruby

        require 'pg'

        conn = PG.connect(
        dbname: 'fliperama',
        user: 'postgres',
        password: '2319',
        host: 'localhost',
        port: 5432
        )

        # Consulta SQL

        query = 'SELECT * FROM jogos'

        begin

        result = conn.exec(query)

        #Itera as linhas do resultado
        result.each do |row|
            puts "ID: #{row['id']}, NOME: #{row['nome']}, DATA: #{row['ano']}, NOTA: #{row['nota_do_jogo']}"
        end

        ensure

        conn.close if conn

        end

    ```

    > Bem, aqui utilizei o `require 'pg'` para importa a `gem`, utilizei o `conn` para ser a variável que guarda a conexão com o banco. Utilizei o `query` para usar como consulta que foi o `SELECT * FROM jogos`. 

    > Iniciei um block com `begin` para caso a coneão de erro, após isso utilizei outra váriavel para guarda o resultado da `query`, que foi `result = con.exec(query)`. Nisso iniciei um block de repetição com `each` para ler os dados a partir da nossa váriavel `result` e formatei para fica algo mais apresentável. Finalizei com `ensure` para fecha o bloco `begin` e adicionei uma condição SE a conexão estiver eu a fecho com um `conn.close if conn`. Ou seja, se a conexão estiver ativa e para finaliza-lá.
    
    - Resultado:

        ![coneão](../Assets/conexao_com_banco_ruby.png)

