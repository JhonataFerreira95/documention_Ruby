# Documentação Ruby — POO (Programação Orientada a Objetos)

## Índice

1. [Introdução](#introdução)
2. [Classes e Objetos](#classes-e-objetos)
3. [Initialize (ou Constructor)](#initialize)
4. [Métodos em Instância](#métodos-em-instância-ou-objetos)
5. [Self](#self)
6. [Getters e Setters](#getters-e-setters)
7. [Atributos com Attr reader, Attr writer e Attr accessor](#atributos-em-ruby)
8. [Parâmetros no Método Initialize](#parâmetros-no-método-initialize)
9. [Encapsulamento (Privado, Público e Protegido)](#encapsulamento-privado-público-e-protegido)
10. [Métodos de Classe](#métodos-de-classe-em-ruby)
11. [Variável de Classe](#variável-de-classe)
12. [Herança em Ruby](#herança-em-ruby)
13. [Polimorfismo em Ruby](#polimorfismo-em-ruby)
14. [Módulos e Mixins em Ruby (Herança Múltipla)](#módulos-e-mixins-em-ruby-herança-múltipla)

---

## Introdução

### O que é POO? (Programação Orientada a Objetos)

> POO é um paradigma de programação que organiza o código em torno de **objetos** — entidades que combinam dados (atributos) e comportamentos (métodos). É o paradigma central do Ruby e a base de todo o ecossistema Rails.

**Conceitos fundamentais:**

- Nova maneira de pensar no desenvolvimento, utilizando conceitos do mundo real.
- Objetos do mundo real se transformam em objetos no software.
- Torna mais fácil a manutenção do sistema ao longo do tempo.
- Uma classe possui **atributos** (características) e **métodos** (comportamentos).

---

### Encapsulamento

> Encapsulamento é o princípio de **esconder os detalhes internos** de uma classe, expondo apenas o necessário para o mundo externo. Protege a integridade dos dados e reduz o acoplamento entre partes do sistema.

- Esconder as funcionalidades e o funcionamento interno do código.
- Proteger o acesso aos atributos, permitindo leitura ou escrita **somente via métodos controlados**.

**Modificadores de acesso:**

| Modificador  | Acesso                                              | Palavra-chave |
|--------------|-----------------------------------------------------|---------------|
| `public`     | Dentro e fora da classe, por qualquer objeto        | `public`      |
| `protected`  | Dentro da classe e em suas subclasses               | `protected`   |
| `private`    | Somente dentro da própria classe                    | `private`     |

---

### Herança

> Herança permite que uma classe **filha (subclasse)** reutilize atributos e métodos de uma classe **pai (superclasse)**, evitando repetição de código e criando hierarquias lógicas.

- **Superclasse (classe pai / classe genérica):** contém comportamentos comuns e reutilizáveis. É a mais abstrata e genérica da hierarquia.
- **Subclasse (classe filha / classe especializada):** herda tudo da superclasse e pode adicionar ou modificar comportamentos específicos.

**Relacionamento "é um":** quando temos `Animal` como superclasse e `Cachorro` e `Gato` como subclasses, dizemos que "um cachorro **é um** animal". As subclasses herdam atributos e métodos da superclasse e podem adicionar os seus próprios.

**Sintaxe para herdar uma classe em Ruby:**

```ruby
Gato < Animal # O operador < (menor que) define a herança — Gato herda de Animal
```

---

## Classes e Objetos

> Uma **classe** é um molde (template) que define quais atributos e comportamentos os objetos criados a partir dela terão. Em Ruby, tudo é um objeto — incluindo as próprias classes.

- Atributos são as **características** do objeto.
- Métodos são as **ações** que o objeto pode realizar.

**Como criar uma classe em Ruby?** Usamos a palavra reservada `class` seguida do nome, que **obrigatoriamente deve começar com letra maiúscula**:

```ruby
class Veiculo # Criamos uma classe chamada Veiculo

end
```

**O que é uma instância (objeto)?** Uma instância é um objeto criado a partir do molde da classe. Apesar de herdar toda a estrutura da classe, cada instância possui seus próprios valores de atributos — independentes das demais.

**Como instanciar um objeto em Ruby?** Usamos o nome da classe seguido de `.new`:

```ruby
ford = Veiculo.new
fiat = Veiculo.new
byd  = Veiculo.new # caso queira ver o tipo de variável no console é só digitar <puts nome_da_variavel_desejada.class>
```

---

## Initialize

> O método `initialize` é o **construtor** da classe — executado automaticamente sempre que um novo objeto é criado com `.new`. É usado para definir a configuração inicial da instância.

**Variáveis de instância (`@`):** em Ruby, atributos de um objeto são armazenados em variáveis de instância, prefixadas com `@`. Cada objeto criado tem suas próprias cópias dessas variáveis — isoladas das demais instâncias.

```ruby
class Carro

    def initialize(marca, modelo)
        @marca = marca   # Variável de instância — guarda o valor específico de cada objeto
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

> Caso queira verificar os `atributos` das suas `variáveis de instância`, no lugar do `puts` utilize o `p`, já que se você utilizar o `puts` não irá acontecer nada. O `p` é um método de "impressão" que exibe a representação de um objeto e adiciona uma nova linha. Na prática seria assim:

```ruby
p carro
```

---

## Métodos em Instância (ou objetos)

> Métodos de instância pertencem a um objeto específico. Para usá-los, é necessário primeiro **instanciar a classe** — criar um objeto a partir dela.

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

carro = Carro.new("Ford", "A23") # Nossa classe instanciada

puts carro.apresentar # Exibindo método instanciado
```

> Agora eu posso utilizar o `método` já que ele é uma instância da minha `classe` que já foi instanciada. Vale ressaltar que podemos utilizar isso com todos os métodos que estão presentes em nossa `classe`, levando em consideração que ela já está instanciada.

---

### O método `to_s`

> `to_s` é utilizado para converter qualquer `objeto` em sua representação em `string`. O método `p` apenas exibe no console a representação do `objeto`, enquanto o método `to_s` retorna a `string` do `objeto` desejado — ou seja, ele retorna a `string` que está dentro do `objeto`, enquanto o `p` retorna o `objeto` inteiro. Cada `objeto` em Ruby tem acesso ao método `to_s`, já que ele retorna uma `string` com informação do `objeto` desejado.

> Antes do método `to_s`, note que quando criamos um `objeto` sem definição do `to_s`, essa é sua mensagem de criação:

![Sem o método to_s](../Banco%20de%20dados%20SQL/Assets/Metódo_p.png)

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
        "#{@marca}-#{@modelo}" # Definindo a mensagem de criação do objeto
    end

end

carro = Carro.new("Ford", "A23") # Nossa classe instanciada

puts carro.apresentar # Exibindo método instanciado
```

> Depois da definição do método `to_s`, podemos ver a mensagem que foi definida nele:

![Com método to_s](../Banco%20de%20dados%20SQL/Assets/Metódo_to_s.png)

---

## Self

> `self` não é um método — é uma **palavra reservada** que representa o próprio objeto instanciado no contexto atual. Dentro de um método, `self` aponta para a instância. Fora dos métodos (mas dentro da classe), `self` aponta para a própria classe.

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
        "#{@marca}-#{@modelo}" # Definindo a mensagem de criação do objeto
    end

end

carro = Carro.new("Ford", "A23") # Nossa classe instanciada

puts carro.apresentar # Exibindo método instanciado
```

> No exemplo acima utilizamos o `self` para anunciar que um `objeto` foi criado.

---

### Usando `self` dentro de métodos

> O `self` também pode ser utilizado em conjunto com o `to_s`. Caso você queira criar uma opção de detalhes manipulando algo dentro da sua classe, é só criar um novo método utilizando o `self` dentro do mesmo.

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
        "#{@marca}-#{@modelo}" # Definindo a mensagem de criação do objeto
    end

    def detalhes
        puts "detalhe do carro: #{self}" # utilizando o self
    end

end

carro = Carro.new("Ford", "A23") # Nossa classe instanciada

puts carro.apresentar # Exibindo método instanciado

puts carro.detalhes # Chamando o método que tem o self
```

> Resultado:

![Resultado](../Banco%20de%20dados%20SQL/Assets/self.png)

> A palavra reservada `self` faz referência de acordo com o local que foi inserida — ela basicamente aponta para a instância atual do `objeto` criado. Como visto, utilizei 2 exemplos com o `self`: um para anunciar que a classe foi instanciada e outro para sobrescrever com o método `to_s`. Se utilizar o `self` fora dos métodos, ele se referencia à classe; dentro dos métodos, se referencia à instância.

---

## Getters e Setters

> Em Ruby, variáveis de instância (`@variavel`) são privadas por padrão — não podem ser acessadas diretamente de fora da classe. `Getters` são métodos que **lêem** o valor de uma variável de instância, enquanto `setters` são métodos que **modificam** esse valor, sendo definidos com um sinal de igual (`=`) anexado ao nome.

### Getters

> O método `getter` geralmente é utilizado para retornar valores em `atributos` ou `variável` instanciada. Para utilizá-lo, damos um nome ao método — normalmente o mesmo nome da `variável de instância` ou `atributo`.

```ruby
class Carro

    puts "Novo objeto foi criado #{self}" # Utilizando o self

    def initialize # removemos os parâmetros para ficar mais simples
        @marca = marca
        @modelo = modelo
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}" # Definindo a mensagem de criação do objeto
    end

    def marca # Utilizando o Getter
        @marca # Para variável de instância
    end

    def modelo # Utilizando o Getter
        @modelo # Para variável de instância
    end

end
```

---

### Setters

> O método `setter` geralmente é utilizado para alterar valores de uma `variável de instância` — lembrando que isso só é possível depois que o `objeto é criado`. Para utilizar o `setter`, criamos um método com o mesmo nome da variável de instância acrescido de `=`, recebendo um parâmetro com nome diferente para atribuir o novo valor.

> **Importante:** para usar setters, os getters correspondentes devem estar definidos antes.

```ruby
class Carro

    puts "Novo objeto foi criado #{self}" # Utilizando o self

    def initialize # removemos os parâmetros para ficar mais simples
        @marca = marca
        @modelo = modelo
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}" # Definindo a mensagem de criação do objeto
    end

    def marca # Utilizando o Getter
        @marca # Para variável de instância
    end

    def modelo # Utilizando o Getter
        @modelo # Para variável de instância
    end

    def marca=(nova_marca) # utilizando o setter para atribuir algo novo para nossa variável de instância
        @marca = nova_marca # o parâmetro é utilizado para que possamos atribuir um valor ao atributo de instância que foi criado
    end

    def modelo=(novo_modelo)
        @modelo = novo_modelo
    end

end

carro = Carro.new        # Para instanciar nossa classe
carro.marca = "Fiat"     # utilizando a nova atribuição com setters
carro.modelo = "uno"

puts carro.marca, carro.modelo
```

---

## Atributos em Ruby

> Ruby oferece três métodos especiais que **eliminam a necessidade de escrever getters e setters manualmente** — tornando o código mais conciso e legível. O objetivo desses métodos é evitar o uso explícito de `getters` e `setters`.

### `attr_reader` — somente leitura

> É utilizado para definir um atributo como atributo de leitura.

```ruby
class Carro

    attr_reader :marca, :modelo # Utilizando o método <attr_reader> para definir que os atributos são de leitura

    def initialize # removemos os parâmetros para ficar mais simples
        @marca = marca
        @modelo = modelo
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}" # Definindo a mensagem de criação do objeto
    end

end

carro = Carro.new # instanciando a classe

p carro.marca  # Exibição do atributo com método <p>
p carro.modelo
```

---

### `attr_writer` — somente escrita

> É utilizado para definir um atributo como atributo de escrita.

```ruby
class Carro

    attr_writer :marca, :modelo # Utilizando o método <attr_writer> para definir que os atributos são de escrita

    def initialize # removemos os parâmetros para ficar mais simples
        @marca = marca
        @modelo = modelo
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}" # Definindo a mensagem de criação do objeto
    end

end

carro = Carro.new

carro.marca  = "Ford" # Utilizando o método <attr_writer>
carro.modelo = "Gol"

p carro.marca  # Exibição do atributo alterado com <attr_writer>
p carro.modelo
```

---

### `attr_accessor` — leitura e escrita

> É utilizado para definir um atributo de leitura e escrita ao mesmo tempo — é a junção do `attr_reader` e `attr_writer`.

```ruby
class Carro

    attr_accessor :marca, :modelo # Utilizando o método <attr_accessor> para definir que os atributos são de escrita e leitura ao mesmo tempo

    def initialize # removemos os parâmetros para ficar mais simples
        @marca = marca
        @modelo = modelo
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}" # Definindo a mensagem de criação do objeto
    end

end

carro = Carro.new

p carro.marca             # Utilizando o método <attr_accessor> para ler
p carro.marca = "Ferrari" # Exibição do atributo alterado com <attr_accessor> para alterar
p carro.marca             # Utilizando o método <attr_accessor> para ler o novo valor alterado
```

---

## Parâmetros no Método Initialize

> Para deixar os `valores` do método `initialize` dinâmicos ao invés de estáticos, trabalhamos com `parâmetros`. Para utilizá-los, precisamos defini-los (de preferência seguindo a mesma nomenclatura do nosso `objeto` que está dentro do `initialize`) e após a sua definição iremos instanciar nossa classe e passar seus valores de forma dinâmica.

> Os parâmetros devem ser informados **na mesma ordem** em que foram declarados. Se algum obrigatório for omitido, o Ruby lançará um erro.

```ruby
class Carro

    attr_accessor :marca, :modelo # Utilizando o método <attr_accessor> para definir que os atributos são de escrita e leitura ao mesmo tempo

    def initialize(marca, modelo) # Adicionamos novamente os parâmetros para ficar algo dinâmico, sem valores estáticos
        @marca = marca
        @modelo = modelo
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}" # Definindo a mensagem de criação do objeto
    end

    def tecnico
        puts "# Dados do Carro"
        puts "Sua marca é #{@marca}"
        puts "Seu modelo é #{@modelo}"
    end

end

carro = Carro.new("ford", "car") # devem seguir a ordem, primeiro vem o modelo e depois a marca, como foi definido nos parâmetros

puts carro

puts carro.tecnico # exibição do método de instância

carro2 = Carro.new("Fiat", "uno")

puts carro2

puts carro2.tecnico
```

> Vale ressaltar que se todos os parâmetros não forem informados, após a execução irá dar erro como pode ser visto:

![Sem passar todos os valores em nossos parâmetros](../Banco%20de%20dados%20SQL/Assets/ruby_erro_sem_definicao_dos_parametros.png)

> Como pode ser visto, é obrigatório passar os dados em nossos parâmetros para que nosso método `initialize` de forma dinâmica funcione.

---

## Encapsulamento. Privado, Público e Protegido

> A função principal do encapsulamento é **esconder os detalhes internos** e a complexidade de um objeto, expondo apenas uma interface controlada (os métodos públicos) para interação externa.

Existem 3 tipos de modificador de acesso no encapsulamento: `Privado`, `Público` e `Protegido`.

---

### Privado (`private`)

> Em Ruby, métodos ou atributos `privados` só podem ser chamados dentro da mesma instância da `classe` onde foram definidos. Eles não podem ser acessados por outras `classes`, nem chamados diretamente em outra instância do mesmo tipo. Além disso, métodos `privados` não podem ser invocados com um receptor explícito `obj.metodo`.

> Tudo que estiver **abaixo** da palavra `private` será privado. Para voltar ao modo público, use `public`. Seguindo a mesma lógica, vale o mesmo para o `protected`.

```ruby
# Irei utilizar o método <Privado>

class Carro

    attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atributos são de escrita e leitura ao mesmo tempo

    attr_reader

    def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para ficar algo dinâmico, sem valores estáticos
        @marca  = marca
        @modelo = modelo
        @preco  = preco
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}-#{@preco}" # Definindo a mensagem de criação do objeto
    end

    def tecnico
        puts "# Dados do Carro"
        puts "Sua marca é #{@marca}"
        puts "Seu modelo é #{@modelo}"
        puts "Seu preço é #{@preco}"
    end

    private # Para utilizar o método privado utilizamos da palavra reservada <private>

    def desconto_carro(desconto_aplicado) # Criando o método de desconto
        @preco -= (@preco * desconto_aplicado / 100)
    end

end

carro = Carro.new("ford", "car", 80600) # devem seguir a ordem, como foi definido nos parâmetros

puts carro # Imprimir resultado no console

carro.desconto_carro(20) # Chamando o método privado para aplicar o desconto
```

> Resultado:

![Resultado na prática](../Banco%20de%20dados%20SQL/Assets/método_privado.png)

> Isso acontece porque o método `private` não pode ser acessado por instância fora da nossa `classe` — apenas dentro da mesma, utilizando um receptor explícito já mencionado acima, nosso `self`.

---

### Público (`public`)

> Em Ruby, métodos ou atributos `public` podem ser chamados em qualquer lugar na `classe` ou fora dela, inclusive nas `sub-classes` que os herdam. Além disso, métodos `public` podem ser invocados com um receptor explícito `obj.metodo` e podem ser usados para acessar até mesmo algum método `privado`.

> Tudo que estiver **abaixo** da palavra `public` estará público. Para tornar os próximos métodos privados abaixo do `public`, utilize a palavra reservada `private`. Seguindo a mesma lógica, vale o mesmo para o `protected`.

```ruby
# Irei utilizar o método <public> para acessar o método <Private>

class Carro

    attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atributos são de escrita e leitura ao mesmo tempo

    def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para ficar algo dinâmico, sem valores estáticos
        @marca  = marca
        @modelo = modelo
        @preco  = preco
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}-#{@preco}" # Definindo a mensagem de criação do objeto
    end

    def tecnico
        puts "# Dados do Carro"
        puts "Sua marca é #{@marca}"
        puts "Seu modelo é #{@modelo}"
        puts "Seu preço é #{@preco}"
    end

    private # Para utilizar o método privado utilizamos da palavra reservada <private>

    def desconto_carro(desconto_aplicado) # Criando o método de desconto
        @preco -= (@preco * desconto_aplicado / 100)
    end

    public # Criando o método para acessar o nosso outro método que se encontra no <private>

    def desconto_10_aplicar # Método para chamar o outro método privado
        desconto_carro(20)
    end

end

carro = Carro.new("ford", "car", 80600) # devem seguir a ordem, como foi definido nos parâmetros

puts carro # Imprimir resultado no console

# carro.desconto_carro(20) # Chamando o método privado para aplicar o desconto

puts carro.desconto_10_aplicar # No lugar de chamar o método <private>, passamos um método <public> para chamá-lo

puts carro # Imprimir resultado no console

# carro.desconto_carro(20) # Chamando o método privado para aplicar o desconto

puts carro # Imprimir resultado no console

puts carro.preco # Antes do desconto

carro.desconto_10_aplicar # No lugar de chamar o método <private>, passamos um método <public> para chamá-lo

puts carro.preco # Depois do desconto
```

> Resultado:

![Método Público](../Banco%20de%20dados%20SQL/Assets/método_publico.png)

> A lógica aqui foi a seguinte: criei um método `public` para chamar o método privado de dentro da própria `classe` — o único lugar onde isso é permitido. Assim controlamos **como** e **quando** a lógica privada é acionada.

---

### Protegido (`protected`)

> Em Ruby, métodos ou atributos `protected` podem ser chamados a partir de instâncias da mesma `classe` onde foram definidos ou em suas `sub-classes`.

> Tudo que estiver **abaixo** da palavra `protected` estará protegido. Para tornar os próximos métodos privados ou públicos, utilize `private` ou `public`.

```ruby
# Irei utilizar o método <protected>

class Carro

    attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atributos são de escrita e leitura ao mesmo tempo

    def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para ficar algo dinâmico, sem valores estáticos
        @marca  = marca
        @modelo = modelo
        @preco  = preco
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}-#{@preco}" # Definindo a mensagem de criação do objeto
    end

    def tecnico
        puts "# Dados do Carro"
        puts "Sua marca é #{@marca}"
        puts "Seu modelo é #{@modelo}"
        puts "Seu preço é #{@preco}"
    end

    # Comentei o método <private> e <public> para trabalhar apenas com o <protected>

    # private # Para utilizar o método privado utilizamos da palavra reservada <private>

    # def desconto_carro(desconto_aplicado) # Criando o método de desconto
    #     @preco -= (@preco * desconto_aplicado / 100)
    # end

    # public # Criando o método para acessar o nosso outro método que se encontra no <private>

    # def desconto_10_aplicar # Método para chamar o outro método privado
    #   desconto_carro(20)
    # end

    protected # Para utilizar o método protegido utilizamos a palavra reservada <protected>

    def desconto_geral(desconto_carros) # Novo método de desconto usando o <protected>
        @preco -= (@preco * (desconto_carros.to_f / 100)) # converter o desconto para float com o <.to_f>
    end

end

# instanciando minha classe

carro = Carro.new("ford", "car", 80600) # devem seguir a ordem, como foi definido nos parâmetros

puts carro

puts carro.tecnico # pré do desconto

carro.send(:desconto_geral, 20) # Utilizando o <.send> que permite chamar dinamicamente outro método de um objeto

puts carro.tecnico # após desconto
```

> Resultado:

![Método Protegido](../Banco%20de%20dados%20SQL/Assets/método_protegido.png)

> Nesse exemplo, a única coisa que fiz foi comentar os métodos `private` e `public` para criar o mesmo exemplo com o `protected` — a mesma lógica de aplicar o desconto, instanciar a `classe` e depois imprimir os valores com o método `tecnico`.

> **Sobre o `.send`:** é um método que chama outros métodos de objetos de forma dinâmica, passando o nome do método como `symbol` ou `string`. Os argumentos devem ser recebidos exatamente nessa ordem: `(:metodo, symbol/string/number)`.

```ruby
carro.send(:desconto_geral, 20)
```

---

## Métodos de Classe em Ruby

> Métodos de classe consistem em métodos que podem ser chamados diretamente na `Classe` sem a necessidade de criar uma instância da mesma. Para defini-los, utilizamos a palavra reservada `self` com a sintaxe `def self.nome_do_metodo`.

> É equivalente aos métodos estáticos (`static`) em linguagens como Java ou C#.

```ruby
class Carro

    attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atributos são de escrita e leitura ao mesmo tempo

    def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para ficar algo dinâmico, sem valores estáticos
        @marca  = marca
        @modelo = modelo
        @preco  = preco
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}-#{@preco}" # Definindo a mensagem de criação do objeto
    end

    def tecnico
        puts "# Dados do Carro"
        puts "Sua marca é #{@marca}"
        puts "Seu modelo é #{@modelo}"
        puts "Seu preço é #{@preco}"
    end

    # Definição do método de <Classe>

    def self.calcular_desconto(preco, desconto_preco) # Para definir um método de <Classe> usamos a palavra reservada <self>
        preco -= (preco * (desconto_preco.to_f / 100))
    end

end

# instanciando minha classe

carro = Carro.new("ford", "car", 80600) # devem seguir a ordem, como foi definido nos parâmetros

puts carro

puts carro.tecnico # pré do desconto

# carro.calcular_desconto(carro.preco, 20) # Forçando erro do método de classe

# Chamando o método de <Classe> pela <Classe>

puts Carro.calcular_desconto(carro.preco, 20) # Chamando ele por sua <Classe>, usei um <puts> para imprimir no terminal
```

> Resultado do erro ao tentar chamar pelo objeto:

![Erro no método de Classe](../Banco%20de%20dados%20SQL/Assets/erro_método_de_classe.png)

> Esse erro acontece porque o método de `Classe` não pode ser acessado por uma instância — e sim pela própria `classe`.

> Resultado correto chamando pela classe:

![Método de Classe](../Banco%20de%20dados%20SQL/Assets/metodo_de_classe.png)

> Nesse exemplo chamei o método de `Classe` pela `Classe`, sem instância. Desse jeito que funciona o método de `Classe`.

---

## Variável de Classe

> Em Ruby, uma variável de `classe` é um valor **compartilhado por uma `classe` e todas as suas `sub-classes`**, denotada pelo prefixo `@@` seguido do nome da variável.

```ruby
@@variavel_de_classe
```

> São acessíveis em qualquer lugar dentro ou fora da `classe` onde foram definidas e mantêm um estado único compartilhado entre todas as instâncias (objetos) criados a partir dessa `classe`.

```ruby
class Carro

    attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atributos são de escrita e leitura ao mesmo tempo

    # Inicializando minha variável de <classe>

    @@contador_carro = 0

    def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para ficar algo dinâmico, sem valores estáticos
        @marca  = marca
        @modelo = modelo
        @preco  = preco

        # Utilizando a variável de <classe>
        @@contador_carro += 1 # Incrementador para saber a quantidade de <Classes> instanciadas
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}-#{@preco}" # Definindo a mensagem de criação do objeto
    end

    def tecnico
        puts "# Dados do Carro"
        puts "Sua marca é #{@marca}"
        puts "Seu modelo é #{@modelo}"
        puts "Seu preço é #{@preco}"
    end

    # Utilizando o método de <classe> em conjunto com a variável de <classe>

    def self.conta_vendas
        @@contador_carro
    end

end

# instanciando minhas <classes>

carro = Carro.new("Ford", "Kar", 34000)
puts carro
puts carro.tecnico

carro1 = Carro.new("Fiat", "Marea", 14000)
puts carro1
puts carro1.tecnico

carro2 = Carro.new("BYD", "Dolph-mine", 111000)
puts carro2
puts carro2.tecnico

# Chamando o método de <classe> que consome uma variável de <classe> em nosso <initialize>

puts "Quantidade de carros vendidos #{Carro.conta_vendas}"
```

> Resultado:

![variavel de classe](../Banco%20de%20dados%20SQL/Assets/variavel_de_classe.png)

> Utilizei uma variável de `Classe` para ver a quantidade de instâncias (objetos) criados da `Class Carro`. Inicializei a variável de `classe` como `0` e, após, passei nossa variável de `Classe` em nosso `initialize` incrementando para que a cada `Classe` instanciada seja adicionada ao contador.

---

## Herança em Ruby

> Herança é o mecanismo que permite criar uma **nova classe a partir de uma existente**, reutilizando todo seu código. A subclasse herda atributos e métodos da superclasse e pode adicionar os seus próprios ou modificar os herdados.

> Para utilizar a `herança` em Ruby, usamos o símbolo menor que `<` para herdar os parâmetros da `super-classe` para a nova `sub-classe`. A sintaxe é: `class Moto < Carro` — à direita está a `super-classe` e à esquerda a `sub-classe`.

> A palavra reservada `super` dentro da subclasse chama a implementação correspondente da superclasse — essencial para reaproveitar o `initialize` e outros métodos sem reescrevê-los.

```ruby
class Carro

    attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atributos são de escrita e leitura ao mesmo tempo

    @@contador_carro = 0

    def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para ficar algo dinâmico, sem valores estáticos
        @marca  = marca
        @modelo = modelo
        @preco  = preco
        @@contador_carro += 1 # Incrementador para saber a quantidade de <Classes> instanciadas
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}-#{@preco}" # Definindo a mensagem de criação do objeto
    end

    def tecnico
        puts "# Dados do Carro"
        puts "Sua marca é #{@marca}"
        puts "Seu modelo é #{@modelo}"
        puts "Seu preço é #{@preco}"
    end

    def self.conta_vendas
        @@contador_carro
    end

end

# criando a nossa <sub-classe>

class Moto < Carro # Utilizando o sinal de < para que nossa nova <classe> herde os parâmetros da <super-classe>

    # Definição dos atributos pelo <attr_accessor> que é escrita e leitura

    attr_accessor :motor

    # definição do nosso <initialize>

    def initialize(marca, modelo, preco, motor)
        # A palavra reservada <super> é utilizada para trazer os métodos da nossa <super-classe> para nossa <sub-classe>
        super(marca, modelo, preco)
        @motor = motor # Como nosso único atributo é motor, então só precisamos declarar o mesmo em nosso <initialize>
    end

    def to_s
        "#{super}-#{@motor}" # Herdando o <to_s> e adicionando nosso parâmetro com polimorfismo
    end

end

# instanciando minhas <classes>

carro = Carro.new("Ford", "Kar", 34000)
puts carro
puts carro.tecnico

# Chamando o método de <classe> que consome uma variável de <classe> em nosso <initialize>

puts "Quantidade de carros vendidos #{Carro.conta_vendas}"

# Instanciando a nossa <sub-classe>

carro1 = Moto.new("BYD", "Dolphe", 11000, "eletrico")
puts carro1
puts carro1.tecnico
```

> Resultado:

![Herança](../Banco%20de%20dados%20SQL/Assets/herança.png)

> Em nossa `sub-classe` definimos nosso `initialize` e chamamos a palavra reservada `super` que puxa os métodos da nossa `super-classe`. Após, passamos os parâmetros de nossa `super-classe` de forma ordenada, seguidos pelos da nossa `sub-classe`.

---

## Polimorfismo em Ruby

> Polimorfismo (sobrescrita de método) pode ser definido da seguinte forma: habilidade de objetos de diferentes `classes` responderem à mesma mensagem (chamada de método) de maneiras diferentes, permitindo que uma única interface seja usada para interagir com vários tipos de objetos. Isso pode ser alcançado por meio de `herança`, onde `sub-classes` sobrescrevem métodos da `super-classe`, ou pelo `duck typing`.

> Para utilizarmos o polimorfismo, primeiro temos que pegar o método desejado e sobrescrever da nossa `super-classe` para nossa `sub-classe` utilizando a palavra reservada `super` — que chama a implementação do método da `super-classe`. Após isso, podemos manipular livremente o método e adicionar mais parâmetros caso desejado.

```ruby
class Carro

    attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atributos são de escrita e leitura ao mesmo tempo

    @@contador_carro = 0

    def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para ficar algo dinâmico, sem valores estáticos
        @marca  = marca
        @modelo = modelo
        @preco  = preco
        @@contador_carro += 1 # Incrementador para saber a quantidade de <Classes> instanciadas
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}-#{@preco}" # Definindo a mensagem de criação do objeto
    end

    def tecnico
        puts "# Dados do Carro"
        puts "Sua marca é #{@marca}"
        puts "Seu modelo é #{@modelo}"
        puts "Seu preço é #{@preco}"
    end

    def self.conta_vendas
        @@contador_carro
    end

end

# criando a nossa <sub-classe>

class Moto < Carro # Utilizando o sinal de < para que nossa nova <classe> herde os parâmetros da <super-classe>

    attr_accessor :motor

    def initialize(marca, modelo, preco, motor)
        super(marca, modelo, preco) # A palavra reservada <super> é utilizada para trazer os métodos da nossa <super-classe>
        @motor = motor # Como nosso único atributo é motor, então só precisamos declarar o mesmo em nosso <initialize>
    end

    def to_s
        "#{super}-#{@motor}" # Herdando o <to_s> e adicionando nosso parâmetro com polimorfismo
    end

    def tecnico
        super # A palavra reservada <super> aproveita todo método da nossa <super-classe> e podemos adicionar mais parâmetros caso seja desejado
        puts "O motor do carro é #{@motor}."
    end

end

# instanciando minhas <classes>

carro = Carro.new("Ford", "Kar", 34000)
puts carro
puts carro.tecnico

# Chamando o método de <classe> que consome uma variável de <classe> em nosso <initialize>

puts "Quantidade de carros vendidos #{Carro.conta_vendas}"

# Instanciando a nossa <sub-classe>

carro1 = Moto.new("BYD", "Dolphe", 11000, "eletrico")
puts carro1
puts carro1.tecnico
```

> Resultado:

![Polimorfismo](../Banco%20de%20dados%20SQL/Assets/Polimorfismo.png)

> Utilizei dois exemplos para o polimorfismo — um no método `to_s` e outro no método `tecnico`. Na `super-classe` instanciada, o `to_s` exibe `marca, modelo, preco`. Na `sub-classe` instanciada, exibe `marca, modelo, preco, motor`. O mesmo acontece para o método `tecnico` — isso é polimorfismo em ação.

---

## Módulos e Mixins em Ruby (Herança Múltipla)

### Módulos

> Módulos são coleções de métodos e constantes que **não podem ser instanciados** — diferente de classes. A utilização de `modulos` em Ruby é algo bem comum, já que podemos agrupar um grupo de métodos para realizar uma determinada tarefa e compartilhar essa solução em específico para outros problemas, reaproveitando o código já escrito.

Servem principalmente para:

- **Namespaces:** agrupar métodos e constantes sob um nome para evitar conflitos.
- **Mixins:** compartilhar código entre classes sem herança direta.

```ruby
module Anuncio
    def exibicao_anuncio
        puts "---Este é um dos carros da BYD---
        "
        self.tecnico # Utilizando o <self> para usar o método <tecnico> dentro da <classe> que incluir este módulo
        puts "=-=-=" * 8
    end
end
```

> Aqui criamos um `modulo` para utilizar dentro das nossas `classes` usando os `mixins`.

---

### Mixins

> Ruby **não suporta herança múltipla** diretamente — uma classe só pode herdar de uma superclasse. Os **mixins** resolvem isso: permitem "misturar" os métodos de um módulo dentro de qualquer classe usando `include`.

> Isso evita o famoso **"Problema do Diamante"** — ambiguidade de herança presente em linguagens que permitem herança múltipla direta. Quando você usa a palavra-chave `include` para adicionar um módulo a uma classe, os métodos de instância desse módulo se tornam métodos de instância da classe.

```ruby
module Anuncio # Criação do módulo para reutilizar mais tarde
    def exibicao_anuncio
        puts "---Este é um dos carros da BYD---
        "
        self.tecnico # Utilizando o <self> para usar no método <tecnico> dentro da <classe> moto
        puts "=-=-=" * 7
    end
end

class Carro

    attr_accessor :marca, :modelo, :preco # Utilizando o método <attr_accessor> para definir que os atributos são de escrita e leitura ao mesmo tempo

    @@contador_carro = 0

    def initialize(marca, modelo, preco) # Adicionamos novamente os parâmetros para ficar algo dinâmico, sem valores estáticos
        @marca  = marca
        @modelo = modelo
        @preco  = preco
        @@contador_carro += 1 # Incrementador para saber a quantidade de <Classes> instanciadas
    end

    def to_s # Tem que ser criado com esse nome para que funcione, já que é uma palavra reservada
        "#{@marca}-#{@modelo}-#{@preco}" # Definindo a mensagem de criação do objeto
    end

    def tecnico
        puts "# Dados do Carro"
        puts "Sua marca é #{@marca}"
        puts "Seu modelo é #{@modelo}"
        puts "Seu preço é #{@preco}"
    end

    def self.conta_vendas
        @@contador_carro
    end

end

# criando a nossa <sub-classe>

class Moto < Carro # Utilizando o sinal de < para que nossa nova <classe> herde os parâmetros da <super-classe>

    include Anuncio # Para utilização do módulo usamos o <include> — isso é chamado de <Mixins>

    attr_accessor :motor

    def initialize(marca, modelo, preco, motor)
        super(marca, modelo, preco) # A palavra reservada <super> é utilizada para trazer os métodos da nossa <super-classe>
        @motor = motor # Como nosso único atributo é motor, então só precisamos declarar o mesmo em nosso <initialize>
    end

    def to_s
        "#{super}-#{@motor}" # Herdando o <to_s> e adicionando nosso parâmetro com polimorfismo
    end

    def tecnico
        super # A palavra reservada <super> aproveita todo método da nossa <super-classe> e podemos adicionar mais parâmetros caso seja desejado
        puts "O motor do carro é #{@motor}."
    end

end

# instanciando minhas <classes>

carro = Carro.new("Ford", "Kar", 34000)
puts carro
puts carro.tecnico

# Chamando o método de <classe> que consome uma variável de <classe> em nosso <initialize>

puts "Quantidade de carros vendidos #{Carro.conta_vendas}"

# Instanciando a nossa <sub-classe>

carro1 = Moto.new("BYD", "Dolphe", 11000, "eletrico")
puts carro1
puts carro1.tecnico
```

> Aqui estamos importando o `modulo` com `include` em nossa `class Moto` — isso é chamado de **mixin**. O `self.tecnico` dentro do módulo chama o método `tecnico` da classe que o incluiu, tornando o módulo reutilizável em qualquer classe que tenha esse método.