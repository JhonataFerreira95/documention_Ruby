# Redis

## Índice

1. [Introdução ao Redis](#o-que-o-redis)
2. [Arquitetura](#artuitetura)
3. [Pontos positivos e negativos](#pontos-positivos-e-negativos-do-redis)
4. [Instalação do Redis](#instalando-o-redis)
5. [Principais operações Redis](#principais-operações-do-redis)

---

## O que é `Redis`?

> O `Redis` é um banco de dados `NoSQL` e utilizar o modelo chave-valor para lider com os dados e é armazenado em memória. Basicamente o `Redis` armazena dados no cache, graças a isso a sua velocidade para ler o dados é extremamente rápida, infelizmente quando o `ram` do sistema é desligado os dados são perdidos mas antes de desligar o sistema, fazemos o que é chamado de `snapshot` para salvar o dados que estão no `redis`.

- Sistema operacional recomendado:

    - Preferencialmente `Linux`, roda em `BSD` e `OSX` também. Não possui suporte oficial para o windowns.

    - Utiliza-se também o docker para armazernar a imagem do `Redis`.

- Tipos de dados

    - String

    - Lists

    - Sets

    - Ordered sets

    - Hash

---

## Artuitetura 

> Normalmente o `Redis` é utilizado como banco secundário e nunca é o único banco de dados da aplicação, é usado para alguns momentos específicos da apliacação, onde os dados precisam ser carregados de forma extremamente rápidas. O `Redis` é utilizado como banco de dados de processamento(armazenamento quente - `hot storage`)

---

## pontos positivos e negativos do `Redis`

- Pontos positivos:

    - Alto desempenho

    - Plataforma de código aberto

    - Permite que as apliacações sejam mais escaláveis

    - Possui supoorte para diversas linguagens como: `js`, `Ruby`, `Go` e muitas outras.

- Pontos negativos:

    - Você precisa ter mais memória primária que o normal

    - Se a instância não for bem configurada e gerenciada, poderá sofrer pressão de memória afetando o desempenho da aplicação

---

## Instalando o `Redis`

> Para instalação do `Redis` é recomendado o uso de `linux` mas como estou utlizando o `Windows`, irei seguir de acordo com a documentação do `redis`. Irei subir uma imagem `Redis` utilizando o `Docker`.

- Após a instalação do `docker`, use esse comando abaixo para rodar o `redis`:

    ```bash

        docker run -d --name redis -p 6379:6379 redis

    ```

- Para testa se o `redis` foi instalado corretamente rode esse comando:

    ```bash

        docker ps

    ```

    - Para um teste mais prático rode:

        ```bash

            docker exec -it redis redis-cli ping

        ```

        - A saída deve retorna um `PONG`

- Comando para parar o `redis`:

    ```bash

        docker stop redis

    ```

- Comando para inicializar o `redis` novamente:

    ```bash

        docker start redis

    ```

---

## Principais operações do `Redis`

> Aqui irei abordar os principais comandos do `Redis`, como usar `get`, `set`, `echo`, `keys` e `del`. São operações do `Redis`, coisas básicas.

- Inicializar os teste via `CLI`:

    ```bash

        docker exec -it redis redis-cli

    ```

    - Para abrir a sessão para manipulação do `redis`!

---

> Execução do `CRUD` com `Redis`:

- Teste do `ECHO`:

    ```docker

        ECHO "Testando o Redis"

    ```

    - Isso vai gerar uma mensaagem no seu terminal!

---

- Iserindo dados com `CREATE`:

    ```bash

        SET produto "sapato"

    ```

---

- Buscando dados com `READ`:

    ```bash

        GET produto

    ```

    - O método de puxar dados no `redis` usando o `GET`, que vai puxar todos os dados da sua chave

---

- Atualizando dados com `UPDATE`:

    ```bash

        SET produto "tenis"

    ```

    - O comando `SET` serve para atualiazr um dados já existenten no `redis`, basicamente use `SET` em sua chave(em nosso caso é `produto`) e após isso passe o novo dado/valor,

---

- Listando todas as `KEYS` criadas:

    ```bash

        KEYS *

    ```

    - O comando `KEYS` serve para lista as chaves dentro do `redis`, com o `*` funcionando da forma que mostre todas as chaves criadas.

---

- Deletando dados com `DELETE`:

    ```bash

        DEL produto

    ```

    - O `DEL` serve para apagar um dado no `Redis`, tente busca o mesmo dado `produto` para ver se consegue resposta via terminaL:

        ```bash

            GET produto

        ```

        - Caso tenha dados tudo certo, vai retorna um `nil` no terminal

---

- Comando para sair do `Redis`:

    ```bash

        exit

    ```

    - Após a conclusão dos feitos, basta apenas digitar `exit` no terminal para finalizar ou sair do `redis`.
