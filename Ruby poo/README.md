# Documentação Ruby POO

## Índice   

1. [Introdução](#introdução)
2. [Classe e Objetos](#classes-e-objetos)
3. [Initialize(Ou Constructor)](#initialize)
4. [Métodos em Instância](#métodos-em-instânciaou-objetos)
5. [Self](#self)
6. [Getter e Setter](#getter-e-setter)
7. [Atributos com Attr reader, Attr writer e Attr acessor](#atríbutos-em-ruby)
8. [Parâmetros no Método Initialize(ou Construtor)](#parâmetros-no--método-initialize)

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

- O método `initialize` funciona da mesma forma que um `construtor` em outras linguagens de programação.

- Geralmente o método `initialize` é utilizado para definir a configuração inicial da sua `classe`, não só `classe` mais também `atríbuto` ou `objeto`.

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
    - Caso queira verificar a seus `atríbutos` das suas `váriavel de instância`, no lugar do `puts` utilize o `p`, já que se voce utilizar o `puts` não ira acontecer nada. É um método de "impressão" que exibe a representação de um objeto e adiciona uma nova linha. Na prática séria assim:

        ```ruby

            p carro

        ```

## Metodos em Instância(ou objetos)

- Bem, vamos começa a falar sobre os métodos de `instância`, os métodos de instância são aqueles que pertencem a um objeto específico. Para utilizá-los, primeiro precisamos instanciar a classe, ou seja, criar um objeto a partir dela. Assim, podemos acessar os métodos definidos dentro da classe para aquele objeto

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

            puts = carro.apresentar # Exibindo  método instânciada

        ```
    - Agora eu posso utilizar o `método` já que ele é uma instância da minha `classe` que já foi instânciada. Vale ressaltar que podemos utilizar isso com todos os métodos que estão presentes em nossa `classe`, levando em consideração que ela já esta instânciada.

- Agora irei aborda o `método` `to_s`, é utilizado para converte qualquer `objeto` em sua representação em `string`. Você deve está se perguntando para que utilizar o método `to_s` se ele faz a mesma coisa do método `p`, o método `p` apenas exibi no console a representação do `objeto`, enquanto o método `to_s` retorna a `string` do `objeto` desejado, ou seja, ele retorna a `string` que está dentro do `objeto`, enquanto o `p` retorna o `objeto` inteiro. Cada `objeto` em `ruby` tem acesso ao método `to_s`, já que o método retorna uma `string` com informação do `objeto` desejado.


    - Antes do método `to_s`, note que quando criamos um `objeto` sem definição do `to_s`, essa e sua mensagem de criação:

        ![Sem o método to_s](../Banco%20de%20dados%20SQL/SQL/Metódo_p.png)

    - Aqui um exemplo na prática:

        ```ruby

             class Carro

                def initialize(marca, modelo)
                    @marca = marca
                    @modelo = modelo
                end

                def apresentar # Vamos supor que você deseja exibir isso no console
                    "Vejam nosso novo modelo de carro #{@modelo} e sua marca #{@marca}"
                end

                def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                    "#{@marca}-#{@modelo}" # Definido a mesagem de criação do objeto
                end

            end

            carro = Carro.new("Ford", "A23") # Nossa classe instânciada

            puts = carro.apresentar # Exibindo método instânciada

        ```

        - Depois da definição do método `to_s`, resaltar que para funcinar perfeitamente, utilize a palavra reservada `to_s`. Podemos ver a mensagem que foi definida no método `to_s`.

            ![Com método to_s](../Banco%20de%20dados%20SQL/SQL/Metódo_to_s.png)

## Self

- Irei apresentar o `self`. O `self` não é um método, mas sim uma palavra reservada que representa o próprio objeto instanciado. Ele é utilizado dentro da classe para fazer referência à instância que está sendo criada ou manipulada.

    - Exemplo com self:

        ```ruby

             class Carro

                puts "Novo objeto foi criado #{self}" # Utilizando o self

                def initialize(marca, modelo)
                    @marca = marca
                    @modelo = modelo
                end

                def apresentar # Vamos supor que você deseja exibir isso no console
                    "Vejam nosso novo modelo de carro #{@modelo} e sua marca #{@marca}"
                end

                def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                    "#{@marca}-#{@modelo}" # Definido a mesagem de criação do objeto
                end

            end

            carro = Carro.new("Ford", "A23") # Nossa classe instânciada

            puts = carro.apresentar # Exibindo  método instânciada


        ```
    
    - No exemplo acima utilizando o `self` para anúnciar que um `objeto` foi criado.

- O `self` também pode ser utilizado em conjunto com o `to_s`, caso você criar uma opção de detalhes manipulando algo dentra da sua classe, vou seguir o exemplo com detalhe, é só criar um novo método utilizando o `self` dentro do mesmo.

    - Exemplo:

        ```ruby

           class Carro

                puts "Novo objeto foi criado #{self}" # Utilizando o self

                def initialize(marca, modelo)
                    @marca = marca
                    @modelo = modelo
                end

                def apresentar # Vamos supor que você deseja exibir isso no console
                    "Vejam nosso novo modelo de carro #{@modelo} e sua marca #{@marca}"
                end

                def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                    "#{@marca}-#{@modelo}" # Definido a mesagem de criação do objeto
                end

                def detalhes
                    puts "detalhe do carro: #{self}" #utilizando o self
                end

            end

            carro = Carro.new("Ford", "A23") # Nossa classe instânciada

            puts = carro.apresentar # Exibindo  método instânciada

            puts carro.detalhes # Chamando o método que tem o self

        ```

    - Resultado: 

        ![Resultado](../Banco%20de%20dados%20SQL/SQL/self.png)

        - O palavra reservada `self` faz refência de acordo com o local que foi inserida. Ela basicamente aponta para instância atual que o `objeto` foi criado.

        - Como visto, utilizei 2 exemplos com o `self`, tanto um para anúnciar que a classe foi instânciada como o outro que foi sobrescrever com o método `to_s`. Como visto, se utilizar o `self` foras dos métodos, ele se referência a classe, dentro dos métodos, se referência aos métodos.

## Getters e Setters 

- Irei aborda o Getter e o Setter. Em `ruby`, `getters` são métodos que lêem o valor de uma variável de instância, enquanto `setters` são métodos que modificam esse valor, sendo definidos com um sinal de igual (=) anexado ao nome.

    - Getters

        - O método `getters` geralmente são utilizados para retorna valores em `atríbutos` ou `variável` instânciada.

        - Para se utilizar o `getter` se da um nome para o método, normalmente se atribuí o mesmo nome da `variável de instância` ou `atríbuto`. 

            - Exemplo para `váriavel de instância`:

                ```ruby

                class Carro

                    puts "Novo objeto foi criado #{self}" # Utilizando o self

                    def initialize # removemos o parâmetros para fica mais simples
                        @marca = marca
                        @modelo = modelo
                    end

                    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                        "#{@marca}-#{@modelo}" # Definido a mesagem de criação do objeto
                    end

                    def marca # Utilizando o Getter
                        @marca # Para variável de instância
                    end

                    def modelo # Utilizando o Getter
                        @modelo # Para variável de instância
                    end

                end

                ```

    - Setters

        - O método `setters` geralmente são utilizado para alterar valores de uma `variável de instância`, lembrando que isso só é possível depois que o `objeto é criado`.

        - Para utilizar o `setters` criamos uma nova `variável de instância` com o mesmo nome do da `variável de instância` com um parâmetro com nome diferente, para que possamos atríbuir um novo valor utilizando o `setters`. Levando em consideração que para utilização do `setters` é necessário definir os `getters` antes de prosseguir

            - Exemplo utilizando o `setters` com `variável de instância` e `atríbuto de instância`:

                ``` ruby 
                
                class Carro

                    puts "Novo objeto foi criado #{self}" # Utilizando o self

                    def initialize # removemos o parâmetros para fica mais simples
                        @marca = marca
                        @modelo = modelo
                    end

                    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                        "#{@marca}-#{@modelo}" # Definido a mesagem de criação do objeto
                    end

                    def marca # Utilizando o Getter
                        @marca # Para variável de instância
                    end

                    def modelo # Utilizando o Getter
                        @modelo # Para variável de instância
                    end

                    def marca=(nova_marca) # utlizando o setters para atribuir algo novo para nossa variável de instância
                        @marca = nova_marca # o parâmentro é utilizando para que possamos atribuir um valor ao atríbuto de instância que foi criado
                    end

                    def modelo=(novo_modelo) 
                        @modelo = novo_modelo
                    end

                end

                carro = Carro.new # Para instânciar nossa classe
                carro.marca = "Fiat" # utilizando a nova atríbuição com setters
                carro.modelo = "uno"

                puts carro.marca, carro.modelo

                ```

## Atríbutos em Ruby

- Métodos especiais para definição atríbutos com rótulo de leitura, escrita ou leitura e escrita ao mesmo tempo. O objetivo desses métodos é evitar o usor explicito de `getters` e `setters`.

    - Attr_reader

        - É utilizado para definir um atríbuto como atríbuto de leitura

            - Exemplo na prática:

                ```ruby 

                class Carro
                    
                    attr_reader :marca, :modelo # Utilizando o método <attr_reader> para definir que os atríbutos são de leitura
                    
                    def initialize # removemos o parâmetros para fica mais simples
                        @marca = marca
                        @modelo = modelo
                    end

                    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                        "#{@marca}-#{@modelo}" # Definido a mesagem de criação do objeto
                    end 

                end

                carro = Carro.new # instânciado a classe

                p carro.marca # Exibição do atríbuto com método <p>
                p carro.modelo

                ```

    - Attr_writer

        - É utilizado para definir um atríbuto como atríbuto de escrita.

            - Exemplo na prática:

                ```ruby 

                class Carro
                    
                    attr_writer :marca, :modelo # Utilizando o método <attr_writer> para definir que os atríbutos são de escrita
                    
                    def initialize # removemos o parâmetros para fica mais simples
                        @marca = marca
                        @modelo = modelo
                    end

                    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                        "#{@marca}-#{@modelo}" # Definido a mesagem de criação do objeto
                    end

                end

                carro = Carro.new # instânciado a classe
                
                carro.marca="Ford" # Utilizando o método <attr_writer>
                carro.modelo="Gol"

                p carro.marca # Exibição do atríbuto alterado com <attr_writer>
                p carro.modelo


                ```

    - Attr_acessor

        - É utilizado para definir um atríbuto leitura e escrita ao mesmo tempo, é a junção do `attr_reader` e `attr_writer`.

            - Exemplo na prática:

                ```ruby

                class Carro
                    
                    attr_accessor :marca, :modelo # Utilizando o método <attr_accessor> para definir que os atríbutos são de escrita e leitura ao mesmo tempo
                    
                    def initialize # removemos o parâmetros para fica mais simples
                        @marca = marca
                        @modelo = modelo
                    end

                    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                        "#{@marca}-#{@modelo}" # Definido a mesagem de criação do objeto
                    end

                end

                carro = Carro.new # instânciado a classe
                
                p carro.marca # Utilizando o método <attr_accessor> para ler

                p carro.marca="Ferrari" # Exibição do atríbuto alterado com <attr_accessor> para alterar 

                p carro.marca # Utilizando o método <attr_accessor> para ler o novo valor alterado 

                ```

## Parâmetros no Método Initialize

- Para deixa os `valores` do método `initialize` estatícos, e torná-los mais dinâmico. Começando a trabalha com `parâmetros` em nosso método `initialize`.

    - Para utlizamos `parâmetros` no lugar de `valores` em nosso `initialize` precisamos definir-los(de preferência seguindo a mesma nomeclatura do nosso `objeto` que está dentro do `ìnitialize`) e após a sua definição iremos instância nossa classe e passsar seus valores de uma forma dinâmica.

      - Exemplo na prática:

        ```ruby 

            class Carro
                    
                attr_accessor :marca, :modelo # Utilizando o método <attr_accessor> para definir que os atríbutos são de escrita e leitura ao mesmo tempo
                                        
                def initialize(marca, modelo) # Adicionamos novamente os parâmetros para fica algo dinâmico, sem valores estáticos
                    @marca = marca
                    @modelo = modelo
                end

                def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                    "#{@marca}-#{@modelo}" # Definido a mesagem de criação do objeto
                end

            end

            carro = Carro.new("ford", "car") # devem seguir a ordem, primeiro vem o modelo e dps a marca, como foi definido nos parâmetros

         ```

    - Vale ressaltar se todos os parâmetro não forem informados após a execução irá da erro como pode ser visto. E que os parâmetros devem ser inserido seguindo a ordem de precedência dos mesmo.

        - Resultado sem todos os valores:

        ![Sem passar todos os valores em nossos parâmetros](../Banco%20de%20dados%20SQL/SQL/ruby_erro_sem_definicao_dos_parametros.png)

        - Como pode ser visto, é obrigatório passar os dados em nossos parâmetros para que nosso método `initialize` de forma dinâmica funcione.





    