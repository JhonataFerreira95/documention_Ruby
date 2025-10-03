# Documentação Ruby POO

## Índice   

1. [Introdução](#introdução)
2. [Classe e Objetos](#classes-e-objetos)
3. [Initialize(Ou Constructor)](#initialize)
4. [Métodos em Instância](#metodos-em-instânciaou-objetos)
5. [Self](#self)
6. [Getter e Setter](#getter-e-setter)
7. [Atributos com Attr reader, Attr writer e Attr acessor](#atríbutos-em-ruby)
8. [Parâmetros no Método Initialize(ou Construtor)](#parâmetros-no--método-initialize)
9. [Encapsulamento(Privado, Público e Protegio)](#encapsulamento-privado-público-e-protegido)
10. [Métodos de Classe](#métodos-de-classe-em-ruby)
11. [Variável de Classe](#variável-de-classe)
12. [Herança em Ruby](#herança-em-ruby)

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

## Métodos em Instância(ou objetos)

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
                    "#{@marca}-#{@modelo}" # Definido a menssagem de criação do objeto
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
                    "#{@marca}-#{@modelo}" # Definido a menssagem de criação do objeto
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
                    "#{@marca}-#{@modelo}" # Definido a menssagem de criação do objeto
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
                        "#{@marca}-#{@modelo}" # Definido a menssagem de criação do objeto
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
                        "#{@marca}-#{@modelo}" # Definido a menssagem de criação do objeto
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
                        "#{@marca}-#{@modelo}" # Definido a menssagem de criação do objeto
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
                        "#{@marca}-#{@modelo}" # Definido a menssagem de criação do objeto
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
                        "#{@marca}-#{@modelo}" # Definido a menssagem de criação do objeto
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
                    "#{@marca}-#{@modelo}" # Definido a menssagem de criação do objeto
                end

                def tecnico
                    puts "#Dados do Carro"
                    puts "Sua marca é #{@marca}"
                    puts "Seu modelo é #{@modelo}"
                end

            end

            carro = Carro.new("ford", "car") # devem seguir a ordem, primeiro vem o modelo e dps a marca, como foi definido nos parâmetros

            puts carro

            puts carro.tecnico # exibição do método de instância

            carro2 = Carro.new("Fiat", "uno")

            puts carro2

            puts carro2.tecnico 

         ```

    - Vale ressaltar se todos os parâmetro não forem informados após a execução irá da erro como pode ser visto. E que os parâmetros devem ser inserido seguindo a ordem de precedência dos mesmo.

        - Resultado sem todos os valores:

        ![Sem passar todos os valores em nossos parâmetros](../Banco%20de%20dados%20SQL/SQL/ruby_erro_sem_definicao_dos_parametros.png)

        - Como pode ser visto, é obrigatório passar os dados em nossos parâmetros para que nosso método `initialize` de forma dinâmica funcione.

## Encapsulamento. Privado, Público e Protegido

- O conceito de `Encapsulamento`, a função principal do `encapsulamento` é esconder os detalhes internos e a complexidade de um objeto, expondo apenas uma interface controlada (os métodos públicos) para interação externa.

- Existem 3 tipos de modificador de acesso no `Encapsulamento`, sendo eles `Privado`, `Público` e `Protegido`.

    - Privado

        - Em `ruby`, métodos ou atributos `privados` só podem ser chamados dentro da mesma instância da `classe` onde foram definidos, inclusive nas `sub-classes` que os herdam. Eles não podem ser acessados por outras `classes`, nem chamados diretamente em outra instância do mesmo tipo, mesmo que pertença à mesma `classe`. Além disso, métodos `privados` não podem ser invocados com um receptor explícito `obj.metodo`, apenas de forma implícita dentro do objeto.

        - Utilizamos a palavra reservada `private` para definir um método privado em `ruby`, tudo que está abaixo da palavra reservada `private` está privado. 

        - Para torna os próximos métodos público abaixo do `private`, se utilizar a palavra reservada `public`.

        - Seguindo a mesma lógica, vale o mesmo para o `protected`.

            - Exemplo na prática:

                ```ruby

                # Irei utilizar o método <Privado>

                class Carro
                        
                    attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atríbutos são de escrita e leitura ao mesmo tempo

                    attr_reader
                                            
                    def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para fica algo dinâmico, sem valores estáticos
                        @marca = marca
                        @modelo = modelo
                        @preco = preco
                    end

                    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                        "#{@marca}-#{@modelo}-#{@preco}" # Definido a menssagem de criação do objeto
                    end

                    def tecnico
                        puts "#Dados do Carro"
                        puts "Sua marca é #{@marca}"
                        puts "Seu modelo é #{@modelo}"
                        puts "Seu preco é #{@preco}"
                    end

                    private # Para utilizar o método privado utilizamos da palavra resevada <private>

                    def desconto_carro(desconto_aplicado) # Criando o método de desconto
                        @preco -= (@preco * desconto_aplicado / 100)
                    end
                    
                end

                carro = Carro.new("ford", "car", 80600) # devem seguir a ordem, primeiro vem o modelo e dps a marca, como foi definido nos parâmetros

                puts carro # Imprimir resultado no console

                carro.desconto_carro(20) # Chamando o método privado para aplicar o desconto

                ```

            - Resultado:

                ![Resultado na prática](../Banco%20de%20dados%20SQL/SQL/método_privado.png)

                - Isso acontece porque o método `private` não pode ser acessado por instância fora da nossa `classe` apenas dentro da mesma utilizando um recptor explícito já mencionado acima, nosso `self`.

    - Public        

         - Em `ruby`, métodos ou atributos `public` podem ser chamados em qualquer lugar na`classe` ou fora dela, inclusive nas `sub-classes` que os herdam. Eles podem ser acessados por outras `classes`, ser chamados diretamente em outra instância do mesmo tipo, mesmo que pertença à mesma `classe`. Além disso, métodos `public`  podem ser invocados com um receptor explícito `obj.metodo`, podem ser usados para acessar até mesmo algum método `privado`.

        - Utilizamos a palavra reservada `public` para definir um método público em `ruby`, tudo que está abaixo da palavra reservada `public` está público. 

        - Para torna os próximos métodos privado abaixo do `public`, se utilizar a palavra reservada `private`.

        - Seguindo a mesma lógica, vale o mesmo para o `protected`.

            - Exemplo na prática:

                ```ruby

                    # Irei utilizar o método <public> para acessar o método <Private>

                    class Carro
                            
                        attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atríbutos são de escrita e leitura ao mesmo tempo
                                                
                        def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para fica algo dinâmico, sem valores estáticos
                            @marca = marca
                            @modelo = modelo
                            @preco = preco
                        end

                        def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                            "#{@marca}-#{@modelo}-#{@preco}" # Definido a menssagem de criação do objeto
                        end

                        def tecnico
                            puts "#Dados do Carro"
                            puts "Sua marca é #{@marca}"
                            puts "Seu modelo é #{@modelo}"
                            puts "Seu preco é #{@preco}"
                        end

                        private # Para utilizar o método privado utilizamos da palavra resevada <private>

                        def desconto_carro(desconto_aplicado) # Criando o método de desconto
                            @preco -= (@preco * desconto_aplicado / 100)
                        end

                        public # Criando o método para acesar o nosso outro método que se encontra no <private>

                        def desconto_10_aplicar # Método para chama o outro método privado
                            desconto_carro(20)
                        end
                        
                    end

                    carro = Carro.new("ford", "car", 80600) # devem seguir a ordem, primeiro vem o modelo e dps a marca, como foi definido nos parâmetros

                    puts carro # Imprimir resultado no console

                   # carro.desconto_carro(20) # Chamando o método privado para aplicar o desconto

                    puts carro.desconto_10_aplicar # No lugar de chama o método <private>, passamos um método <public> para chama-ló

                    puts carro # Imprimir resultado no console

                    # carro.desconto_carro(20) # Chamando o método privado para aplicar o desconto

                    puts carro # Imprimir resultado no console

                    puts carro.preco # Antes do desconto

                    carro.desconto_10_aplicar # No lugar de chama o método <private>, passamos um método <public> para chama-ló

                    puts carro.preco # Depois do desconto

                 ```

            - Resultado: 

                ![Método Público](../Banco%20de%20dados%20SQL/SQL/método_publico.png)

                - Aqui fiz a seguinte lógica para acessar o método dentro `private`, criei um método `public` para chama o método privado dentro da própria `classe` para acessar a lógica do método `privado`.

    - Protected

        - Em `ruby`, métodos ou atributos `protected` podem ser chamados a partir de instâncias da mesma `classe` onde foram definidos ou em suas `sub-classes`.

        - Utilizamos a palavra reservada `protected` para definir um método protegido em `ruby`, tudo que está abaixo da palavra reservada `protected` está protegido. 

        - Para torna os próximos métodos privado ou público abaixo do `protected`, se utilizar a palavra reservada `private` ou `public`, fica a cargo do que você está fazendo.

        - Seguindo a mesma lógica acima de se utilizar, vale o mesmo para o `private` ou `public`, apenas existem algumas restrições que devem ser levadas em consideração.

            - Exemplo na prática:

                ```ruby

                    # Irei utilizar o método <protected> para acessar o método <Private>

                    class Carro
                            
                        attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atríbutos são de escrita e leitura ao mesmo tempo
                                                                        
                        def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para fica algo dinâmico, sem valores estáticos
                            @marca = marca
                            @modelo = modelo
                            @preco = preco
                        end

                        def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                            "#{@marca}-#{@modelo}-#{@preco}" # Definido a menssagem de criação do objeto
                        end

                        def tecnico
                            puts "#Dados do Carro"
                            puts "Sua marca é #{@marca}"
                            puts "Seu modelo é #{@modelo}"
                            puts "Seu preco é #{@preco}"
                        end

                        # Comentei o método <private> e <public> para trabalha apenas com o <protected>

                        # private # Para utilizar o método privado utilizamos da palavra resevada <private>

                        # def desconto_carro(desconto_aplicado) # Criando o método de desconto
                        #     @preco -= (@preco * desconto_aplicado / 100)
                        # end

                        # public # Criando o método para acesar o nosso outro método que se encontra no <private>

                        # def desconto_10_aplicar # Método para chama o outro método privado
                        #   desconto_carro(20)
                        # end

                        protected # Para utilizar o método protegido utilizamos a palavra reservada <protected>

                        def desconto_geral(desconto_carros) # Novo método de desconto usando o <protected>
                            @preco -= (@preco * (desconto_carros.to_f / 100)) # convetir o desconto para float com o <.to_f>
                        end
                                                
                        end

                        # instânciando minha classe

                        carro = Carro.new("ford", "car", 80600) # devem seguir a ordem, primeiro vem o marca e dps modelo, como foi definido nos parâmetros

                        puts carro 

                        puts carro.tecnico # pré do desconto

                        carro.send(:desconto_geral, 20) #  Irei utilizar o <.send.> que permite chaama dinamicamente outro método de um objeto

                        puts carro.tecnico # após desconto

                ```

            - Resultado: 

                ![Método Protegido](../Banco%20de%20dados%20SQL/SQL/método_protegido.png)

                - Nesse exemplo acima, única coisa que fiz foi comentar os métodos `private` e `public` para criar o mesmo exemplo com o `protected`, a mesma lógica de aplicar o desconto, instância a `classe` e depois imprimir os valores com o método `tecnico` foi o mesmo.

                - Sobre a utilização do `send`, usei porque é um método que chama outros métodos de objetos de uma forma dinânmica, passando o nome do método como `symbol` ou `string`, e os argumentos devem receber exatamente nessa ordem `(:metodo, symbol/string/number(desejado))`

                    - Exemplo:

                        ```ruby

                            carro.send(:desconto_geral, 20)

                        ```

## Métodos de Classe em Ruby

- Irei aborda o método de `Classe`, consiste em um método que pode ser chamado diretamente na `Classe` sem a necessidade de criar uma instância da mesma.

- Como se utilizar um método de `Classe`? Para definir um método de `Classe` utilizamos a palavra reservada `self`, vista em anteriormente. Para torna nosso método desejado em método de `Classe`  usamos a sintaxe `def self.<nome do método desejado>`.

    - Exemplo na prática:
    
        ```ruby

        class Carro
                            
            attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atríbutos são de escrita e leitura ao mesmo tempo
                                                                                    
            def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para fica algo dinâmico, sem valores estáticos
                @marca = marca
                @modelo = modelo
                @preco = preco
            end

            def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                "#{@marca}-#{@modelo}-#{@preco}" # Definido a menssagem de criação do objeto
            end

            def tecnico
                puts "#Dados do Carro"
                puts "Sua marca é #{@marca}"
                puts "Seu modelo é #{@modelo}"
                puts "Seu preco é #{@preco}"
            end

            # Definição do método de <Classe>

            def self.calcular_desconto(preco, desconto_preco) # Para definir um método de <Classe> usamos a palavra reservada <self>
                preco -= (preco * (desconto_preco.to_f / 100))
            end
                                                
        end

        # instânciando minha classe

        carro = Carro.new("ford", "car", 80600) # devem seguir a ordem, primeiro vem o marca e dps modelo, como foi definido nos parâmetros

        puts carro 

        puts carro.tecnico # pré do desconto

        # carro.calcular_desconto(carro.preco, 20) # Forçando erro do método de classe

        # Chamando o méotodo de <Classe> pela <Classe>

        puts Carro.calcular_desconto(carro.preco, 20) # Chamando ele por sua <Clsse>, usei um <puts> para imprimir no terminal

        ```

    - Resultado: 
    
        ![Erro no método de Classe](../Banco%20de%20dados%20SQL/SQL/erro_método_de_classe.png)

        - Esse erro acontece porque o método de `Classe` não pode ser acessado por uma instância e sim por sua própria `classe`.

            - Resultado:

                ![Método de Classe](../Banco%20de%20dados%20SQL/SQL/metodo_de_classe.png)

                - Nesse exemplo eu chamei o método de `Classe` pela `Classe`, sem instância, desse jeito que funciona o método de `Classe`.

## Variável de Classe

- Em `ruby`, uma variável de `classe` é um valor compartilhado por uma `classe` e todas as suas `sub-classes`, denotada  pelo  prefixo `@@` e em seguida o nome da sua variável.

    - Exemplo na prática: 

        ```ruby

            @@variavel_de_classe

        ```

- Elas são acessíveis em qualquer lugar, dentro ou fora da`classe` onde foram definidas e mantêm estado único que é compartilhado entre todas as instâncias(objetos) criados a partir dessa `classe`.

    - Exemplo na prática:

        ```ruby

            class Carro
                                
                attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atríbutos são de escrita e leitura ao mesmo tempo
                          
                # Inicializando minha variável de <classe>

                @@contador_carro = 0

                def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para fica algo dinâmico, sem valores estáticos
                    @marca = marca
                    @modelo = modelo
                    @preco = preco

                    # Utilizando a variável de <classe>
                    @@contador_carro += 1 # Icrementador para saber a quantidade de <Classes> instânciada
                end

                def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                    "#{@marca}-#{@modelo}-#{@preco}" # Definido a menssagem de criação do objeto
                end

                def tecnico
                    puts "#Dados do Carro"
                    puts "Sua marca é #{@marca}"
                    puts "Seu modelo é #{@modelo}"
                    puts "Seu preco é #{@preco}"
                end

                # Utilizando o método de <classe> em conjunto com a variável de <classe>

                def self.conta_vendas
                    @@contador_carro
                end
                                                    
            end

            # instânciando minhas <classes>

            carro = Carro.new("Ford", "Kar", 34000)
            puts carro
            puts carro.tecnico

            carro1 = Carro.new("Fiat", "Marea", 14000)
            puts carro1
            puts carro1.tecnico

            carro2 = Carro.new("BYD", "Dolph-mine", 111000)
            puts carro2
            puts carro2.tecnico

            # Chamando o método de <classe> que consume uma variável de <classe> em nosso <initialize>

            puts "Quantidade de carros vendidos #{Carro.conta_vendas}" 

        ```
    
    - Resultado:

        ![variavel de classe](../Banco%20de%20dados%20SQL/SQL/variavel_de_classe.png)
    
        - Utilizei uma váriavel de `Classe` para ver a quantidade instância(objetos) criados da minha `Class Carro`, inicializei a minha variável de `classe` como `0`, após passei nossa variável de `Classe` em nosso `initialize(constructor)` incrementadno para que a cada `Classe` instânciada seja adicionada a nossa variável de `Classe`.

## Herança em Ruby

- Utilizamos bastante a `herança` para reutilização de código e a criação de nova estruturas a partir de estruturas já definidas, onde a `sub-classe` pode herda tudo da `super-Classe` que já foi criada e definida, reutilizando o código já feito de maneira muito eficiênte.

- Para utilizar a `herança` em `ruby` é muito simples, você já tem sua `super-classe` definida e quer criar outra a partir da mesma, utilizando o símbolos menor que `<` para herda os parâmetros da sua `super-class` para sua nova `sub-classe`, a sintaxe é a seguinte `Class Moto < Carro`, nessa ordem, a direira está sua `super-classe` e a eesquerda está sua `sub-classe`.

- Quando falamos sobre `super-classe` e `sub-classe`, sempre deixamos claro que a `super-classe` é sempre a `classe` mais generica, enquanto a `sub-classe` é uma classe mais especializada.  O porque a `super-classe` é mais generica? Por que ela deve ser uma classe que tenha muito código e funções, sendo mais fácil de se reutilizar. A `sub-classe` é especializada para adaptar ou entender esse comportamento de forma concreta, Essa separação evita repetição de código e dá flexibilidade ao sistema.

    - Exemplo na prática: 

        ```ruby

            class Carro
                                
                attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atríbutos são de escrita e leitura ao mesmo tempo
                          
                # Inicializando minha variável de <classe>

                @@contador_carro = 0

                def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para fica algo dinâmico, sem valores estáticos
                    @marca = marca
                    @modelo = modelo
                    @preco = preco

                    # Utilizando a variável de <classe>
                    @@contador_carro += 1 # Icrementador para saber a quantidade de <Classes> instânciada
                end

                def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
                    "#{@marca}-#{@modelo}-#{@preco}" # Definido a menssagem de criação do objeto
                end

                def tecnico
                    puts "#Dados do Carro"
                    puts "Sua marca é #{@marca}"
                    puts "Seu modelo é #{@modelo}"
                    puts "Seu preco é #{@preco}"
                end

                # Utilizando o método de <classe> em conjunto com a variável de <classe>

                def self.conta_vendas
                    @@contador_carro
                end
                                                    
            end

            # criando a nossa <sub-classe>

            class Moto < Carro # Utilizando o sinal de `menor que <` para que nossa nova <classe> herde os parâmetros da <super-classe>

                # Definição dos atributos pelo <attr_acessor> que é escrita e leitura
                
                attr_accessor :motor

                # dinição do nosso <initialize>

                def initialize(marca, modelo, preco, motor)
                    # A palavra reservada <supe> é utilizada para trazer os métodos da nossa <super-classe> para nossa <sub-classe>
                    super(marca, modelo, preco) 
                    @motor = motor # Como nosso único atributo é motor, então só precisamos declarar o mesmo em noosso <initialize>
                end

            end

            # instânciando minhas <classes>

            carro = Carro.new("Ford", "Kar", 34000)
            puts carro
            puts carro.tecnico

            # Chamando o método de <classe> que consume uma variável de <classe> em nosso <initialize>

            puts "Quantidade de carros vendidos #{Carro.conta_vendas}"

            # Instânciando a nossa <sub-classe>

            carro1 = moto.new("BYD", "Dolphe", 11000, "eletrico")
            puts carro1
            puts carro1.tecnico

        ```

    - Resultado:

        ![Herança](../Banco%20de%20dados%20SQL/SQL/herança.png)

        - Em nossa `sub-classe` definimos nosso `initialize` e chamamos a palavra reservada `super` que puxa os métodos da nossa `super-classe`, após passamos os parâmetros de nossa `super-classe` de forma ordenanda, passamos o da nossa `sub-classe`, sendo assim, primeiro os parâmetros de nossa `super-classe` em seguida os da nossa `sub-classe`.