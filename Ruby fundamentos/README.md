# Documentação do Ruby — Fundamentos

## Índice

1. [Conversão de Tipos](#conversão-de-tipos)
2. [Concatenação e Exibição de Valores](#concatenação-e-exibição-de-valores)
3. [Interpolação de Strings](#interpolação-de-strings)
4. [Operadores Aritméticos](#operadores-aritméticos)
5. [Operadores Lógicos](#operadores-lógicos)
6. [Operadores Especiais](#operadores-especiais)
7. [Manipulação de Strings](#manipulação-de-strings)
8. [Outras Operações com Strings](#outras-operações-com-strings)
9. [Comparação de Números](#comparação-de-números)
10. [Entrada de Dados e Condições](#entrada-de-dados-e-condições)
11. [Estruturas Condicionais - Case](#estruturas-condicionais---case)
12. [Estruturas de Repetição](#estruturas-de-repetição)
13. [Métodos](#métodos)
14. [Operações Matemáticas](#operações-matemáticas)
15. [Blocos (Blocks)](#blocks-blocos)
16. [Arrays em Ruby](#arrays-em-ruby)
17. [Indexação e Atribuição em Arrays](#indexação-e-atribuição-em-arrays)
18. [Métodos úteis para Arrays](#métodos-úteis-para-arrays)
19. [Recuperando índice e valor](#recuperando-índice-e-valor)
20. [Hashes em Ruby](#hashes-em-ruby)
21. [Iterando valores de um Hash](#iterando-valores-de-um-hash)
22. [Métodos úteis para Hashes](#métodos-úteis-para-hashes)
23. [Lambda](#lambda)
24. [Diferentes tipos de Lambdas](#diferentes-tipos-de-lambdas)
25. [Símbolos em Ruby](#símbolos-em-ruby)
26. [Map em Ruby](#utilizando-o-map-em-ruby)
27. [Código Ternário](#utilizando-código-ternário-em-ruby)

---

## Introdução

Lógica de programação é o alicerce primordial para uma carreira bem-sucedida na área de tecnologia. Dominar os conceitos básicos é essencial para construir soluções eficientes e robustas. Vamos explorar os tópicos fundamentais da linguagem Ruby: tipos, gets, concatenação, operadores, strings, condicionais, laços de repetição, funções, parâmetros, blocks, lambda, arrays e hashes.

**Lógica de programação — pilares principais:**

- Conceitos Básicos
- Estruturas de Controle
- Estruturas de Dados
- Funções e Procedimentos
- Lógica Booleana

---

## Lógica de Programação em Ruby

Este documento reúne exemplos e explicações sobre os principais conceitos de lógica de programação utilizando a linguagem Ruby.

### Dados Básicos

> Toda variável em Ruby possui um tipo implícito — diferentemente de linguagens como Java ou C#, não é necessário declarar o tipo explicitamente. O Ruby o infere automaticamente.

```ruby
name = "Avatar"
yearLaunch = 2022
price = 100.00
planIncluded = false

puts name, yearLaunch

# Identificando os tipos de dados com o método .class

puts name.class         # => String
puts yearLaunch.class   # => Integer
puts price.class        # => Float
puts planIncluded.class # => FalseClass
puts true.class         # => TrueClass
puts false.class        # => FalseClass
```

---

## Conversão de Tipos

> Em Ruby, toda entrada do usuário via `gets` chega como `String`. Para trabalhar com números, é necessário converter explicitamente usando métodos como `.to_i` (para inteiro) ou `.to_f` (para decimal). O `.chomp` remove o caractere de quebra de linha `\n` que o terminal adiciona ao final da entrada.

```ruby
puts "Informe o nome da sua classe:"
name = gets.chomp.to_i # Converte a string digitada para inteiro
```

```ruby
puts "Informe o nome do sua classe"
name = gets.chomp.to_f # Converte a string digitada para float (número decimal)
```

---

## Concatenação e Exibição de Valores

> Concatenação é a operação de juntar strings. Em Ruby, usamos o operador `+` para isso — mas atenção: **todos os valores precisam ser do tipo String**. Por isso usamos `.to_s` para converter números antes de concatenar.

```ruby
puts "Nome da classe: " + name.to_s      # Converte name para string antes de concatenar
puts "Ano de lançamento: " + yearLaunch.to_s # Converte para string
puts "Preço da classe: " + price.to_s
```

---

## Interpolação de Strings

> Interpolação é uma forma mais elegante e segura de embutir variáveis dentro de strings. Usamos a sintaxe `#{}` dentro de aspas duplas. A conversão para string é automática — não é preciso chamar `.to_s` manualmente.

```ruby
puts "Nome da classe: #{name}"
puts "Ano de lançamento: #{yearLaunch}" # A conversão para string é automática
```

---

## Tipos de Dados em Ruby

### Tipos Básicos

| Tipo       | Descrição                                         | Exemplo               |
|------------|---------------------------------------------------|-----------------------|
| `String`   | Sequência de caracteres                           | `"Hello, World!"`     |
| `Integer`  | Números inteiros                                  | `42`                  |
| `Float`    | Números decimais                                  | `3.14`                |
| `Boolean`  | Verdadeiro ou falso                               | `true`, `false`       |
| `NilClass` | Representa ausência de valor                      | `nil`                 |

### Estruturas de Dados

| Tipo      | Descrição                              | Exemplo                                  |
|-----------|----------------------------------------|------------------------------------------|
| `Array`   | Coleção ordenada de elementos          | `[1, 2, 3, 4, 5]`                        |
| `Hash`    | Coleção de pares chave-valor           | `{ "name" => "Alice", "age" => 30 }`     |
| `Symbol`  | Sequência imutável de caracteres       | `:name`                                  |
| `Range`   | Intervalo de valores                   | `1..5`                                   |

### Expressões Regulares

- **Regexp** — Expressão regular: `/\d+/`
- **MatchData** — Resultado de correspondência: `/(\d+)/.match("123")`

### Funções e Métodos

- **Proc** — Bloco de código: `Proc.new { |x| x * 2 }`
- **Method** — Referência a um método: `method(:foo)`
- **UnboundMethod** — Método não vinculado: `String.instance_method(:upcase)`
- **Binding** — Contexto de execução: `binding`

### Classes e Módulos

- **Class** — Representa uma classe: `String`
- **Module** — Representa um módulo: `Math`
- **Object** — Representa um objeto: `Object.new`
- **Struct** — Estrutura de dados simples: `Struct.new(:name, :age)`

### Entrada e Saída

- **File** — Arquivo: `File.open("foo.txt")`
- **IO** — Entrada/saída: `$stdin`, `$stdout`
- **Dir** — Diretório: `Dir.pwd`

### Tempo e Datas

- **Time** — Data e hora: `Time.now`
- **Date** — Data: `Date.today`

### Controle de Fluxo

- **Thread** — Thread: `Thread.new { ... }`
- **Mutex** — Mutex: `Mutex.new`
- **Fiber** — Fibra (corrotina leve): `Fiber.new { ... }`
- **Enumerator** — Enumerador: `1.upto(10)`

### Números Avançados

- **Rational** — Número racional: `Rational(2, 3)`
- **Complex** — Número complexo: `Complex(1, 2)`

### Codificação

- **Encoding** — Codificação de caracteres: `Encoding::UTF_8`

### Exceções e Erros

- **Exception** — Exceção base: `StandardError`
- **ZeroDivisionError** — Divisão por zero
- **ArgumentError** — Argumento inválido
- **RuntimeError** — Erro em tempo de execução
- **SystemExit** — Saída do sistema

---

### Tipo Boolean em Ruby

> Em Ruby, não existe uma classe chamada `Boolean`. Em vez disso, os valores `true` e `false` pertencem, respectivamente, às classes `TrueClass` e `FalseClass` — ambas subclasses de `Object`, a classe mãe de tudo em Ruby.

- `TrueClass` → representa o valor verdadeiro (`true`)
- `FalseClass` → representa o valor falso (`false`)

---

### Módulos

> Módulos funcionam como "namespaces" — permitem organizar métodos e constantes relacionados sem a necessidade de criar uma classe. São muito utilizados no Rails para concerns e mixins.

```ruby
module Saudacao
  def self.ola(nome)
    "Olá, #{nome}!"
  end
end

puts Saudacao.ola("Mundo") # => "Olá, Mundo!"
```

---

## Operadores Aritméticos

> Os operadores de comparação retornam `true` ou `false` e são fundamentais para controlar o fluxo da aplicação com condicionais.

```ruby
bigger = num1 > num2         # '>' representa "maior que"
smaller = num1 < num2        # '<' representa "menor que"
equal = num1 == num2         # '==' verifica se são iguais
bigger_or_equal = num1 >= num2 # '>=' representa "maior ou igual"
smaller_or_equal = num1 <= num2 # '<=' representa "menor ou igual"
```

---

## Operadores Lógicos

> Os operadores `and` e `or` (ou `&&` e `||`) combinam expressões booleanas. São amplamente usados em validações e condicionais compostas.

```ruby
puts ((2 > 4) and (3 > 1)) # Ambos precisam ser verdadeiros para retornar true
puts ((2 > 4) or (3 > 1))  # Apenas um lado precisa ser verdadeiro para retornar true
```

---

## Operadores Especiais

> O operador `..` define um **Range** (intervalo) em Ruby. É uma das funcionalidades mais expressivas da linguagem — pode ser usado com números, letras e até em estruturas `case/when`.

```ruby
print ('a'..'z').to_a # Converte o intervalo de caracteres em array
print (1..5).to_a     # Converte o intervalo numérico para um array
```

---

## Manipulação de Strings

> Ruby oferece uma API rica para manipulação de strings. Os métodos abaixo são não-destrutivos por padrão — ou seja, retornam um novo valor sem alterar a string original (exceto as versões com `!`, como `upcase!`).

```ruby
puts des2.upcase    # Converte todos os caracteres para maiúsculas
puts des2.downcase  # Converte todos os caracteres para minúsculas
puts des2.capitalize # Apenas a primeira letra fica maiúscula
puts des2.swapcase  # Alterna entre maiúsculas e minúsculas
puts des2.chop      # Remove o último caractere da string
```

---

## Outras Operações com Strings

> Esses métodos cobrem os casos de uso mais comuns no dia a dia: busca, substituição, limpeza e transformação de strings.

```ruby
puts "Ruby".reverse                      # Inverte a string
puts "Ruby".length                       # Retorna o tamanho da string
puts "Ruby".gsub("R", "J")              # Substitui "R" por "J" em todas as ocorrências
puts "Hello, world!".include?("world")  # Retorna true se a string contém "world"
puts "    Ruby    ".strip               # Remove espaços extras no início e no fim da string
puts "apple,banana,grape".split(",")    # Divide a string em um array usando "," como separador
puts "=" * 20                           # Repete a string 20 vezes — útil para separadores visuais
```

---

## Comparação de Números

> A estrutura `if/else` avalia uma condição e executa o bloco correspondente. É a base de qualquer lógica condicional.

```ruby
a = 100
b = 200

if a > b
    puts "#{a} maior que #{b}" # Executado se a for maior que b
else
    puts "#{b} maior que #{a}" # Executado caso contrário
end
```

---

## Entrada de Dados e Condições

> Aqui combinamos entrada do usuário com condicionais compostas usando `and`. Note que `.chomp` limpa o `\n` final, e a conversão de tipo garante que a comparação seja numérica — não textual.

```ruby
puts "Digite o seu nome do filme: " # Solicita ao usuário que digite o nome do filme
name = gets.chomp                   # Captura a entrada do usuário e remove a quebra de linha

puts "Digite o ano de lançamento: " # Solicita o ano de lançamento do filme
ano = gets.chomp.to_i               # Converte a entrada para um número inteiro

puts "Digite a nota de classificação: " # Solicita a nota de classificação do filme
classificacao = gets.chomp.to_f        # Converte a entrada para um número decimal (float)

# Se a nota for maior que 8.0 E o filme for lançado após 2015, ele é recomendado
if classificacao > 8.0 and ano > 2015
    puts "O filme #{name} é bom. Recomendo assisti-lo."
else
    puts "O filme ainda não atingiu uma boa nota, por isso não recomendo." # Caso contrário, não é recomendado
end
```

---

## Estruturas Condicionais - Case

> O `case/when` é o equivalente Ruby do `switch/case` de outras linguagens, porém muito mais poderoso — aceita ranges, expressões regulares e qualquer objeto que implemente `===`.

```ruby
puts "Informe a idade: "
idade = gets.chomp.to_i # Lê a entrada do usuário e converte para inteiro

case idade
  when 0..2
    puts "bebê"
  when 3..6
    puts "criança"
  when 7..12
    puts "pré-adolescente"
  when 13..18
    puts "Jovem adulto"
  else
    puts "adulto"
end
```

---

## Estruturas de Repetição

> Em Ruby, o `each` é o iterador mais idiomático para percorrer coleções. O `break` interrompe o loop completamente, enquanto o `next` pula para a próxima iteração — equivalente ao `continue` em outras linguagens.

```ruby
moviesList = ["Black desert", "pupilo azul", "principe deserdado", "Ji-gwi"]

# Iterando todos os valores do Array
moviesList.each do |movie|
  puts movie
end

# Utilizando o break — para o loop ao encontrar o valor especificado
moviesList.each do |movie|
  break if movie == "principe deserdado"
  puts movie
end

# Utilizando o next — pula o item especificado e continua iterando
moviesList.each do |movie|
  next if movie == "pupilo azul"
  puts movie
end
```

---

## Métodos

> Métodos em Ruby são definidos com `def` e encerrados com `end`. Eles podem ou não receber parâmetros e retornam automaticamente o valor da última expressão avaliada — o uso de `return` explícito é opcional.

```ruby
def Hello
  puts "Hello World"
end

Hello()

# Método para somar dois números
def sum()
  puts 5 + 4
end

sum()

# Método para cadastrar um filme — combina entrada de dados e exibição formatada
def create_movie
  puts "Digite o nome do filme:"
  name = gets.chomp
  puts "Digite o ano de lançamento do filme:"
  yearLaunch = gets.chomp.to_i
  puts "Digite o preço do filme:"
  price = gets.chomp.to_f
  puts "#{name} - R$ #{price}"
end

create_movie()

# Método com parâmetros — os valores são passados na chamada do método
def full_name(fname, lname)
  puts "Nome completo: #{fname} #{lname}"
end

full_name("Rodrigo", "Silva")
```

---

## Operações Matemáticas

> Aqui unimos entrada de dados, condicionais e formatação de saída. O `'%.2f' % result` é uma formatação de string estilo `printf` que limita o número de casas decimais a 2.

```ruby
puts "Digite o primeiro número: "
num1 = gets.chomp.to_f
puts "Digite o segundo número: "
num2 = gets.chomp.to_f
puts "Digite a operação a ser realizada (+, -, *, /)"
operação = gets.chomp

if operação == "+"
  result = num1 + num2
elsif operação == "-"
  result = num1 - num2
elsif operação == "*"
  result = num1 * num2
elsif operação == "/"
  result = num1 / num2
else
  puts "Você não digitou uma das 4 opções listadas, tente novamente!"
  result = 0
end

puts "Resultado da sua operação é #{'%.2f' % result}"
```

---

## Blocks (Blocos)

> Blocos são trechos anônimos de código que aceitam argumentos e retornam um valor. São um dos pilares do Ruby — toda a API de coleções (each, map, select, etc.) é construída em cima deles. A palavra-chave `yield` transfere o controle para o bloco passado na chamada do método.

```ruby
def hello
  yield # yield chama o bloco que foi passado junto com o método
end

hello { puts "Olá, mundo!" }
hello { puts "Olá, mundo 2!" }
hello { puts "Olá, mundo 3!" }
```

#### Passando argumentos para o bloco via yield

```ruby
def one_two_three
  yield 1
  yield 2
  yield 3
end

one_two_three { |number| puts number * 10 }
```

> **Nota:** Os pipes `| |` delimitam os parâmetros que o bloco recebe. No exemplo acima, `number` recebe 1, 2 e 3 em cada chamada do `yield`.

---

## Arrays em Ruby

### Criação de Arrays

> Arrays em Ruby são dinâmicos — não têm tamanho fixo e podem conter elementos de tipos diferentes. Existem várias formas de criá-los:

```ruby
movies = []          # Inicializa um array vazio
puts movies.class    # => Array

movies2 = Array.new  # Outra forma de inicializar um array vazio
puts movies2.class   # => Array

movies_test = ["Ousama Ranking", "Solo Leveling"] # Array com múltiplos valores
puts movies_test

two_movies = Array.new(2, "Ousama Ranking") # Cria um array com dois elementos iguais
puts two_movies
```

#### Utilizando exponenciação ao criar Arrays

```ruby
numbers = Array.new(5) { |x| x ** 2 }
puts numbers # Saída: [0, 1, 4, 9, 16]
```

#### Diferentes formas de criar Arrays

```ruby
num = Array.[](1, 2, 3)
puts num

num2 = Array(1..5) # Usando operador de intervalo para criar array
puts num2
```

#### Arrays com múltiplos tipos de valores

```ruby
movie = ["Ranking of Kings", 2021, 50.00, true]
puts movie
```

### Iterando sobre Arrays

#### Usando `for`

```ruby
for mov in movies_test
  puts mov
end
```

#### Usando `while`

```ruby
i = 0
while i < movies_test.length
  puts movies_test[i]
  i += 1
end
```

#### Usando `each`

> O `each` é a forma mais idiomática e recomendada em Ruby para iterar arrays.

```ruby
movies_test.each { |a| puts a }
```

---

## Indexação e Atribuição em Arrays

> Arrays em Ruby são indexados a partir de 0. Índices negativos contam a partir do final — `-1` é sempre o último elemento.

```ruby
puts movies[0]    # Primeiro item
puts movies[-1]   # Último item
puts movies[1, 2] # Dois elementos a partir do índice 1

movies[2] = "Scissor Seven" # Altera o elemento no índice 2
puts movies
```

### Métodos úteis para Arrays

```ruby
puts movies.length  # Tamanho do array
puts movies.first   # Primeiro item
puts movies.last    # Último item

movies << "Cowboy Bebop" # Shovel operator — adiciona elemento ao final do array
puts movies

puts movies.append("Bleach") # Equivalente ao <<, adiciona ao final
puts movies.sort()           # Retorna o array ordenado alfabeticamente/numericamente
puts movies.shuffle()        # Retorna o array em ordem aleatória
```

---

## Recuperando índice e valor

> O `each_with_index` é útil quando precisamos tanto do valor quanto da posição do elemento durante a iteração.

```ruby
movies.each_with_index { |value, index| puts "#{index} - #{value}" }
```

---

## Hashes em Ruby

> Hashes são estruturas de chave-valor — semelhantes a objetos JSON ou dicionários em Python. Em Ruby moderno, é comum usar Symbols (`:chave`) como chaves por serem mais eficientes em memória.

### Criando um Hash

```ruby
mov = Hash.new
puts mov.class # => Hash

movie = {"name" => "Ousama Ranking", "year" => "2023"} # Chaves como Strings
puts movie

movie2 = {:name => "Solo Leveling", :year => "2024"} # Chaves como Symbols (mais eficiente)
puts movie2
```

---

## Iterando valores de um Hash

#### Usando `keys` e `values`

```ruby
puts movie2.keys   # Retorna apenas as chaves
puts movie2.values # Retorna apenas os valores
```

#### Usando `for`

```ruby
for key, value in movie2
  puts "#{key} - #{value}"
end
```

#### Usando `while`

```ruby
i = 0
while i < movie2.length
  puts "#{movie2.keys[i]} - #{movie2.values[i]}"
  i += 1
end
```

#### Usando `each`

> O `each` em Hashes desestrutura automaticamente o par chave/valor — forma mais idiomática de iterar.

```ruby
movie2.each { |key, value| puts "#{key} - #{value}" }
```

---

## Métodos úteis para Hashes

```ruby
puts movie.size             # Retorna o número de pares chave-valor
puts movie.length           # Equivalente ao size
puts movie.to_a             # Converte o hash em array de arrays [[chave, valor], ...]
puts movie.max              # Retorna o maior par chave-valor (comparação lexicográfica)
puts movie.min              # Retorna o menor par chave-valor
movie.store(:genre, "aventura") # Adiciona um novo par chave-valor ao hash
puts movie.fetch("name")    # Recupera o valor da chave informada (lança erro se não existir)
movie.clear()               # Remove todos os pares do hash
puts movie
```

---

## Lambda

> Lambda é uma função anônima — um objeto que encapsula um bloco de código e pode ser armazenado em variáveis, passado como argumento ou chamado explicitamente com `.call`. É similar a arrow functions no JavaScript ou closures em outras linguagens. Lambdas são ideais para encapsular lógica pequena e reutilizável sem a necessidade de definir um método completo.

```ruby
lambda_example = lambda { |name| "Olá, #{name}!" }
puts lambda_example.call("Mundo") # => "Olá, Mundo!"

multiply = lambda { |a, b| a * b }
puts multiply.call(4, 5) # => 20
```

---

## Diferentes tipos de Lambdas

#### Soma de dois números

```ruby
sum = lambda { |a, b| a + b }
puts sum.call(10, 20) # => 30
```

#### Divisão de dois números

```ruby
div = lambda { |a, b| a / b }
puts div.call(20, 4) # => 5
```

#### Adicionando um novo item ao hash

```ruby
movie.store(:genre, "Aventura")
puts movie
```

#### Limpando todos os itens do hash

```ruby
movie.clear()
puts movie
```

---

## Símbolos em Ruby

> Símbolos (Symbols) são identificadores imutáveis precedidos por dois-pontos, como `:nome`, `:idade`, `:peso`. Diferente de uma String, um Symbol com o mesmo nome é sempre **o mesmo objeto na memória** — o que os torna mais eficientes como chaves de Hash. Eles pertencem à classe `Symbol` e são amplamente usados em argumentos de métodos, chaves de Hash e metaprogramação no Ruby/Rails.

#### Verificando o `object_id` de um Symbol

```ruby
# Dois symbols com o mesmo nome sempre terão o mesmo object_id
puts :nome.object_id # Sempre retorna o mesmo valor
puts :nome.object_id # Idêntico ao de cima — mesmo objeto na memória
```

#### Diferença de alocação de memória entre Symbol e String

```ruby
# Strings com o mesmo conteúdo podem ter object_ids diferentes — são objetos distintos
puts "nome".object_id # Valor aleatório — novo objeto alocado na memória
puts "nome".object_id # Outro valor aleatório — mais um objeto criado

# Já com symbols:
puts :nome.object_id  # Sempre o mesmo ID — reutiliza o mesmo objeto
puts :nome.object_id  # Idêntico — zero alocação extra
```

---

## Utilizando o map em Ruby

> O `map` (também chamado de `collect`) é utilizado quando queremos **transformar** os elementos de um Array ou Hash, gerando uma nova coleção sem modificar a original. É equivalente ao `.map()` do JavaScript. Combinado com `with_index`, permite acessar o índice de cada elemento durante a transformação.

```ruby
nomes = ["Hiss", "Ouken", "Bass", "Saturn"] # Lista de nomes (array original — não será modificado)

# Usamos .map para transformar cada elemento e .with_index para acessar a posição atual
nomes_personalidades = nomes.map.with_index do |personality, index|
  # Interpolamos o nome com o sobrenome correspondente usando [index] para alinhar os arrays
  "#{personality} #{['Astran', 'Ikidori', 'Ovirowa', 'Emu'][index]}"
end

puts nomes_personalidades # Imprime o novo array com nomes e sobrenomes combinados
```

---

## Utilizando código ternário em Ruby

> O operador ternário é uma forma concisa de escrever um `if/else` em uma única linha. Segue o padrão: `condição ? valor_se_verdadeiro : valor_se_falso`. É muito utilizado em Ruby para atribuições e retornos simples — mas deve ser evitado quando a lógica é complexa, para não prejudicar a legibilidade.

#### Condicional sem código ternário:

```ruby
nome = "kuma"

if nome == "kuma"
  puts "Kuma é um fofo"
else
  puts "Kuma não é um fofo"
end
```

#### A mesma lógica com código ternário:

> O método `.eql?` verifica se dois objetos são equivalentes em valor e tipo — mais seguro que `==` em alguns contextos.

```ruby
# .eql? verifica se o conteúdo da variável é equivalente ao valor informado
puts nome.eql?("kuma") ? "Kuma é um fofo" : "Kuma não é fofo"

# Estrutura do ternário:
# condição ? <executado se true> : <executado se false>
```