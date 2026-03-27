# Modelagem de Banco de Dados

## Índice

1. [Introdução conceitual](#introdução-ao-conceitos-de-bandos-de-dados)
2. [Fundamentos sobre SQL](#fundamentos-de-banco-de-dados-sql)
3. [Conhecendo a linguagem SQL](#conhecendo-a-linguagem-sql)

## Introdução ao conceito de Bandos de dados

- São um conjutos de arquivos relacionados entre si que armazenam todo tipo de dados(sobre pessoas, usuários, objetos, etc).

- No começo, eram gerenciados pelo próprio sistemas de arquivos e `SOs`, até que sugiram os `SGBDs`(sistema de gerenciamento de banco de dados).

    - Um `SGBD` é um software encarregado de cuidar do acesso, persistência, manipulação e organização dos dados.

    - Um `SGBD`(do inglês, `DBMS`) é o que hoje chamamos informalmente de `banco de dados`, mas ele não é o banco de dados em si.

    - O `SGBD` inclui o banco de dados, mas pode incluir várias outras ferramentas em seu ecossistema.

    - Exemplos de `SGBDs` conhecidos:

        - `PostegreSQL`

        - `SQL Server`

        - `MySQL`

        - `MariaDB`

        - `Oracle`

        - `Firebird`

        - `MongoDB`

- Categorias de Bancos de Dados:

    - `Relacionais ou SQL:`

        - Banco mais tradicionais que trabalham com uma linguagem de consulta estruturada padrão(`SQL`).

    - `Não-relacionais ou NoSQL:`

        - Bancos mais modernos que se popularizaram a partir da década de 2010 para solução de diversos problemas específicos, não utilizando os conceitos tradicionais e liguagem `SQL`.

## Fundamentos de Banco de dados SQL

- `Tabelas:`

    - Forma estruturada de armazenar os dados, um banco de dados é composto de várias tabbelas(relacionadas ou não).

- `Relacionamentos:`

    - Formas de vincular uma tabela a outra para criar estruturas mais robusta e coesas.

- `Colunas:`

    - Definem quais dados podem ser inseridos em uma tabela.

- `Linhas:`

    - São registros de dados em si, cada linha é considerada uma entrada individual em uma tabela.

- `Chave primária:`

    - A coluna de uma tabela que é única e serve para identificar cada linha.

- `Constraints:`

    - Limitações e regras impostas sobre o banco de dados.

## Conhecendo a linguagem SQL

- O que é `SQL`?

    - Foi criada na década de 1970 pela `IBM` posteriomente padronizada pela `ANSI` e `ISO`.

    - `SQL`(Structured Query language) é a linguagem padrão utilizada para gerenciar e manipular bancos de dados relacionais.

    - Serve para criação de tabelas, inserção de linhas, consulta e manipulação dos dados, gerenciamento de acesso, etc.

    - Exemplos de comandos `SQL`:

        ```SQL

            CREATE TABLE Clientes;

            SELECT nome, telefone FROM Clientes;

        ```