# Redis

## Índice

1. [Introdução ao Redis](#o-que-o-redis)
2. [Arquitetura](#artuitetura)
3. [Pontos positivos e negativos](#pontos-positivos-e-negativos-do-redis)

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

## pontos positivos e negativos do `Redis`

- Pontos positivos:

    - Alto desempenho

    - Plataforma de código aberto

    - Permite que as apliacações sejam mais escaláveis

    - Possui supoorte para diversas linguagens como: `js`, `Ruby`, `Go` e muitas outras.

