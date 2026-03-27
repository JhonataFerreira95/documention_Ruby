# Modelagem de Banco de Dados

## Índice

1. [Introdução conceitual](#introdução-ao-conceitos-de-bandos-de-dados)
2. [Fundamentos sobre SQL](#fundamentos-de-banco-de-dados-sql)
3. [Conhecendo a linguagem SQL](#conhecendo-a-linguagem-sql)
4. [Tipos de dados](#tipos-de-dados)

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

            CREATE TABLE clientes;

            SELECT nome, telefone FROM clientes;

        ```

- Categorias de comandos da linguagem `SQL`:

    - `DDL`(Data Definition Language):

        - Comandos para definir a estrutura do banco de dados.

        ```SQL

            CREATE TABLE,
            ALTER TABLE,
            DROP TABLE

        ```

    - `DML`(Data Manipulation Language):

        - Comandos para manipulação de dados.

        ```SQL

            SELECT, 
            INSERT,
            UPDATE,
            DELETE

        ```

    - `DCL`(Data Control Language):

        - Comandos para controlar o acesso aos dados.

        ```SQL

            GRANT,
            REVOKE

        ```

    - `TCL`(Transaction Control Language):

        - Comandos para gerenciar transações.

        ```SQL

            BEGIN,
            COMMIT,
            ROLLBACK

        ```

## Tipos de dados

- Tipo de dados definem a natureza dos valores que podem ser armazenados em uma coluna de uma tabela.

- Escolher o tipo de dado adequeado é crucial para a eficiência, integridade e otimização do banco de dados.

- Dados numéricos:

    - `SMALLINT`:

        - Inteiro de 2 bytes.

    - `INT/INTEGER`:

        - Inteiro de 4 bytes.

    - `BEGINT`:

        - Inteiro com 8 bytes.

    - `FLOAT`:

        - Número com ponto flutuante de precisão simples.
    
    - `DOUBLE`:

        - Número com ponto flutuante de precisão dupla.

    - `DECIMAL/NUMERIC`:

        - Número de precisão fixa, útil para valores monetários.

- Dados de texto:

    - `CHAR(n)`:

        - Cadeia de caracteres de comprimento fixo.

    - `VARCHAR(n)`:

        - Cadeia de caracteres de comprimento variável.

    - `TEXT`:

        - Cadeia de caracteres de comprimento muito grande.

- Dados de data e hora:

    - `DATE`:

        - Data(ano, mês, dia).

    - `TIME`:

        - Hora(hora, minuto, segundo).

    - `DATETIME`:

        - Combinação de qualquer data e hora.

    - `TIMESTAMP`:

        - Data e hora, muito usado para metadados.

- Outros tipos de dados variados:

    - `BOOLEAN`:

        - Representa valores lógicos(`TRUE` ou `FALSE`).

    - `BLOB`:

        - Dados binários grandes, usados para armazenar aqruivos como imagens e vídeos(pouco usado).

    - `ENUM`:

        - Conjuntos de valores predefinidos.

    - `JSON`:

        - Armazena dados em formato `JSON`.
    

