# Modelagem de Banco de Dados

## Índice

1. [Introdução conceitual](#introdução-ao-conceitos-de-bandos-de-dados)
2. [Fundamentos sobre SQL](#fundamentos-de-banco-de-dados-sql)
3. [Conhecendo a linguagem SQL](#conhecendo-a-linguagem-sql)
4. [Tipos de dados](#tipos-de-dados)
5. [PSQL via CLI](#comando-do-banco-via-cli)
6. [Inserindo linhas em uma tabela](#inserindo-linhas-em-uma-tabela)
7. [Consultar dados de uma tabela](#consultando-dado-de-uma-tabela)

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
    
## Comando do banco via CLI

- Normlamente utilizamos algum recurso visual para manipular o `SGBD` exemplos como `DATAGRIPE`, `PHPmyAdmin` ou `PGmyAdmin` porém aqui irei utlizar diretamente via `CLI` ou interface de linha de comando.

- Primeiramente escolhe o diretório onde irá alocar o banco, após utilize esse comando para inicializar o `postgres`:

    ```SQL

        psql -U postgres

    ```
    ![Resultado SQL](../Assets/SQL.png)

    - Após o comando digite a senha que você definiu na hora da instalação.

    - Resultado após a senha:

        ![Resultado 2 SQL](../Assets/SQL_FININSH.png)

        - Obeserve que você já está no servidor do banco, apenas crie um banco com o comando básico que já foi introduzido a cima.

            ```SQL

                CREATE DATABASE nome-do-banco;

            ```

        - Caso queira consultar se o banco foi criado, utilize o comando:

            ```psql

                \l
            
            ```

            ![\l](../Assets/comando_l.png)

            - Observa-se que ele lista todos os bancos presentes.

- Logar em outro banco via `CLI`:

    - Antes de logar em um banco existente via `CLI`, utilize o comando:

        ```psql

            \q
        
        ```

        - Esse comando permite você deslogar de um banco, após isso utlize o comando:

            ```psql

                psql -U postgres -d nome-do-banco;
            
            ```

        - E a senha que foi definido na instalção.

            ![testing_database](../Assets/testing_database.png)

            - Caso queira troca de banco de uma forma rápida utilize o comando:

            ```psql

                \c nome-do-banco;

            ```

- Altrando nome do banco via `CLI`:

    - Vamos supor que queremos alterar o nome do nosso banco, para isso utilizamos o comando:

        ```SQL

            ALTER DATABASE  nome-do-banco RENAME TO novo-nome;

        ```
- Excluindo banco de dados via `CLI`:

    - Caso deseje excluir algum banco existente, utilize o comando:

        ```SQL

            DROP DATABASE nome-do-banco;

        ```

- Criando uma tabela em nosso banco, utilize o comando:

    ```SQL

        CREATE TABLE nome-da-tabela(
            id SERIAL PRIMARY KEY,
            name VARCHAR(255) NOT NULL,
            phone VARCHAR(20) NOT NULL,
            email VARCHAR(100) UNIQUE
        );

    ```

    - Aqui eu citei alguns comandos novos, como o `NOT NULL`, é bem intuitivo pelo mas caso não saiba, isso significa que a coluna `nome` e `phone` não podem ser vázias.

    - Criamos um `id` como chave primária da nossa tabela, definimos como auto-incremento com o `SERIAL`.

    - Utilizei o `UNIQUE` para que o campo do `email` seja único.

    - Caso queira consulta as tabelas via `psql`, utilize o comando:

        ```psql

            \dt
        
        ```

- Se deseja excluir uma tabela, utilize esse comando:

    ```SQL

        DROP TABLE nome-da-tabela-que-deseja-excluir;

    ```

- Modificando uma tabela existente como o esse comando:

    ```SQL

        ALTER TABLE nome-da-tabela ADD COLUMN nova-coluna TIPO-DA-NOVA-COLUNA;

    ```

    - Observa-se que criei uma nova coluna com o comando `ALTER` e `ADD COLUMN`. E para excluir uma coluna existente utilize o comando:

    ```SQL

        ALTER TABLE nome-databela DROP COLUMN nome-da-coluna;

    ```

    - Outros exemplos:

    ```SQL

        ALTER TABLE nome-da-tabela ALTER COLUMN coluna-desejada SET NOT NULL;

    ```

    - Alterando um valor de uma coluna para que ele não seja nulo com `SET NOT NULL`. Caso deseje remover o `NOT NULL` de alguma coluna, utilize o comando:

    ```SQL

        ALTER TABLE nome-da-tabela ALTER COLUMN coluna-desejada DROP NOT NULL;

    ```

    - Se deseja renomear uma coluna utilize o comando:

    ```SQL

        ALTER TABLE nome-da-tabela RENAME COLUMN coluna-desejada TO novo-nome-da-coluna;

    ```

    - Para alterar o nome, utilizamos o `TO`.

- Criando uma coluna em uma tabela existente, utilize o comando:

    ```SQL

        ALTER TABLE nome-da-tabela ADD COLUMN IF NOT EXIST nome-da-coluna tipo-de-dado;
    
    ```

    - O `IF NOT EXIST` é para garantir que se houver uma coluna com o nome igual, essa mesma coluna que estamos criando não seja criada.

## Inserindo linhas em uma tabela

- Para adicionamos algo em nossa tabela já existente utilizamos o comando:

    ```SQL

        INSERT INTO nome-da-tabela(name, address, phone) VALUES(
            'bass', 'rua A, n380', '(84)98160-5893'
        );

    ```

    - Observa-se que, para inserir o dados em uma tabela necessito referência a mesma com o `INSERT INTO`, insert serve para eu dizer que quero inserir algo e o into para referência a tabela desejada. Após isso passo as colunas das tabelas, que no caso foram `name, address, phone`, após isso utilizo o `VALUES` para adiconar valores e abro pârenteses e passo os dados de acordo com a ordem definida dentro do pârenteses da tabela.

## Consultando dado de uma tabela

- Como fazer uma consulta a uma tabela existente no banco com `SQL`, basta apenas consultar com esse comando:

    ```SQL

        SELECT quais-colunas-eu-quero-selecionar FROM nome-da-tabela;

        SELECT * FROM nome-da-tabela;

    ```

    - Aqui eu fiz dois comandos utilizando o `SELECT`, um com o nome da coluna e o outro com `*`, utilizando o `*` seleciona todas as colunas existente da nossa tabela caso deseje selecionar uma ou mais colunas use a vírgula para separar as colunas desejadas, o `FROM` aponta para a tabela que desejamos consultar.

- Utilizando o `WHERE`, `AS`, `AND`, `OR` e `IN` na consulta do banco:

    - `WHERE:`

        - A clásula `WHERE` server para filtra registro em uma consulta no `SQL` ou condição como `if`.

        ```SQL

            SELECT * FROM nome-da-tabela WHERE coluna-desejada <condição>;

            SELECT * FROM stock WHERE quantity < 20;

        ```

        - Aqui utilizei a palavra reservada `WHERE` para pesquisa todos os produtos com a quantidade menor que 20 na tabela `stock`.

    - `AS:`

        - A palavra reservadar `AS`, serve renomear os nomes de colunas do banco.

        ```SQL

            SELECT nome-da-coluna AS novo-nome-da-coluna-temporario, nome-da-coluna AS novo-nome-da-coluna-temporario FROM nome-da-tabela;

            SELECT id AS identificação, name AS nome FROM clients;
        
        ```
        
        - Aqui utilizei 2 exemplos de colunas para demonstrar que dá pra fazer com várias. O nome fica apenas naquela consulta, não é como o `RENAME`.

    - `AND:`

        - Irei abordar o operador booleano `AND`, como já de conhecimento geral, para que a saída do operador seja `true` é necessário que ambas condições sejam `true`.

        ```SQL

            SELECT * FROM nome-da-tabela WHERE coluna-desejada-e-condição AND coluna-desejada-e-condição;

            SELECT * FROM stock WHERE category = 'grãos' AND amount < 20;
        
        ```
    
    - `OR:`

        - Irei abordar o operador booleano `OR`, como já de conhecimento geral, para que a saída do operador seja `true` é necessário que apenas uma condição seja `true`.

        ```SQL

            SELECT * FROM nome-da-tabela WHERE coluna-desejada-e-condição OR coluna-desejada-e-condição;

            SELECT * FROM stock WHERE category = 'massas' OR amount = 100;

        ```

        - Aqui utilizei o `OR` para verificar no banco se existe uma categoria chamada `massas` em `category` ou algum item de quantidade 100 em `amount`.

        