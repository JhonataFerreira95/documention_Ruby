# Documentação Ruby POO

## Índice   

1. [Introdução](#introdução)
2. [Classe e Objetos](#classes-e-objetos)
3. [Initialize(Ou Constructor)](#initialize)
4. [Métodos em Instância](#métodos-em-instânciaou-objetos)

## Introdução

- O que é o POO? Ou programação orientada a objetos.

    - Conceitos

        - Nova maneira de pensar no desenvolvimento, utilizando conceitos do mundo real.

        - Objetos do mundo real transforma-se em objetos no software.

        - Torna mais fácil a manutenção ao sistema.

        - Uma classe possui atríbutos(características) e métodos(comportamentos).

    - Encapsulamento

        - Esconder as funcionalidades e funcionamento do nosso código.

        - Proteger o acesso aos atríbutos, possibilitando o acesso a leitura ou escrita destes atributos, somente via métodos.

        - Modificadores de acesso

            - Público

                - Permite acesso aos membros dentro e fora da classe.
            
            - Protegido

                - Permite acesso aos membros dentro da classe e nas subclasses

                - Pode ser definido com um `protected`.
            
            - Privado
                 
                 - Permite acesso aos membros somente dentro da classe.

                 - Pode ser definida com a palavra reservada `private`.

    - Herança

        - Possibilita que uma classe(filha) possa herdar atríbutos e métodos de outra classe(pai).

        - Classe Genérica

            - Geralmente as classe Genérica são as `SUPER-CLASSE`(classe pai), por que classe Genérica? Ela pode conter informações que pode ser últi para outras classe deverivadas dela ou `SUB-CLASSES`(classe filha).
        
        - Classe Especialista

            - As classe Especialistas são às `SUB-CLASSE`(classe filha), que herdam as informações da `SUPER-CLASSE`(classe pai), além de herda todos os atríbutos da `SUPER-CLASSE`, elas podem ter seus próprios atríbutos e métodos específico para sua finalidade.

        - Relacionamento de Herança

            - "é um" usando herança é quando temos uma classe geral Animal e classes específicas como Cachorro e Gato que herdam dela, pois um cachorro é um animal e um gato é um animal. Isso significa que as `SUB-CLASSE` (Cachorro, Gato) herdam os atributos e métodos da `SUPER-CLASSE` (Animal), adicionando ou modificando seus próprios comportamentos específicos. 

        - Herdando uma classe em Ruby

            - Para herda uma classe é só utilizar o operador `<`(menor que), exemplo abaixo:

                ``` ruby

                Gato < Animal

                ```
    -
        
## Classes e Objetos

- Vamos começar falando sobre o que é uma classe. É uma estrutura que define as propriedades (atributos) e comportamentos (métodos) que os objetos criados a partir dela terão. Os atributos são as características do objeto, enquanto os métodos são as ações que o objeto pode realizar. Em termos simples, uma classe é um template para criar objetos que compartilham um conjunto comum de campos e métodos.

- Como criar uma classe em `ruby`? Utilizando a palavra reservada `classe<NomeDesejado>` lembrando que o nome da sua `classe` deve começar com a lestra maiúscula. Siga o exemplo abaixo:

    ```ruby

    class Veiculo # Criamos uma classe chamada veiculos

    end

    ```
- O que uma `Instancia(objeto)`? Bem, uma instancia é uma crianção de um objeto a partir do modelo da `SUPER-CLASSE(classe pai)` e herda sua estrutura e métodos, num entando, vale resaltar que apesar de herda tudo da sua `classe pai` a sua instancia pode conter métodos e estruturas próprias que sua `classe pai` não contém.

- Como `instanciar(objeto)` algo em `ruby`? Para isso devemos utilizar o nome da `classe`, que acima foi `Veiculo` e a palavra reservada `.new`. Seugue o exemplo abaixo:

    ```ruby

    ford = Veiculo.new
    fiat = Veiculo.new
    byd = Veiculo.new # caso queira ver o tipo de variável no console é só digitar <puts `nome_da_variavel_desejada.class`>

    ```

## Initialize

- O metódo `initialize` funciona da mesma forma que um `construtor` em outras linguagens de programação.

- Geralmente o metódo `initialize` é utilizado para definir a configuração inicial da sua `classe`, não só `classe` mais também `atríbuto` ou `objeto`.

- Irei aborda uma curiosidade na linguagem `ruby`, normalmente definimos atributos para nossas classes. Isso também acontece em outras linguagens, mas em Ruby temos algo chamado variável de instância. Após a criação da classe e do método initialize, podemos definir variáveis de instância com `@`. A função da `variável de instância` é guardar informações específicas de cada objeto criado. Assim, toda vez que você instancia um objeto, ele terá suas próprias características armazenadas nessas variáveis.

    - Exemplo prático:

        ```ruby

            class Carro

                def initialize(marca, modelo)
                    @marca = marca
                    @modelo = modelo
                end

                def apresentar
                    "Vejam nosso novo modelo de carro #{modelo} e sua marca #{marca}"
                end

            end

            carro = Carro.new("Ford", "A23")

            puts carro
            p carro

        ```
    - Caso queira verificar a seus `atríbutos` das suas `váriavel de instância`, no lugar do `puts` utilize o `p`, já que se voce utilizar o `puts` não ira acontecer nada. Na prática séria assim:

        ```ruby

            p carro

        ```

## Métodos em Instância(ou objetos)

- Bem, vamos começa a falar sobre os metódos de `instância`, os métodos de instância são aqueles que pertencem a um objeto específico. Para utilizá-los, primeiro precisamos instanciar a classe, ou seja, criar um objeto a partir dela. Assim, podemos acessar os métodos definidos dentro da classe para aquele objeto

    - Exemplo na prática:

        ```ruby

            class Carro

                def initialize(marca, modelo)
                    @marca = marca
                    @modelo = modelo
                end

                def apresentar # Vamos supor que você deseja exibir isso no console
                    "Vejam nosso novo modelo de carro #{@modelo} e sua marca #{@marca}"
                end

            end

            carro = Carro.new("Ford", "A23") # Nossa classe instânciada

            puts = carro.apresentar # Exibindo  metódo instânciada

        ```
    - Agora eu posso utilizar o `metódo` já que ele é uma instância da minha `classe` que já foi instânciada. Vale ressaltar que podemos utilizar isso com todos os metódos que estão presentes em nossa `classe`, levando em consideração que ela já esta instânciada.

