# Documentação do Ruby

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
25. [Simbólos em ruby]()

---

---

## Introdução

Lógica de programação é o alicerce primordial para uma carreira bem-sucedida na área de tecnologia. Dominar os conceitos básicos é essencial para construir soluções eficientes e robustas. Vamos explorar alguns dos tópicos fundamentais abordados, como tipos, gets, concatenação, operadores, strings, condicionais, laços de repetição, funções, parâmetros, blocks, lambda, arrays e hash.

- **Lógica de programação:**

  - Conceitos Básicos.
  - Estruturas de Controle.
  - Estruturas de Dados.
  - Funções e Procedimentos.
  - Lógica Booleana.

---

## Lógica de Programação em Ruby
Este repositório contém exemplos e explicações sobre os principais conceitos de lógica de programação utilizando a linguagem Ruby.

### Dados Básicos

```ruby

name = "Avatar"
yearLaunch = 2022
price = 100.00
planIncluded = false

puts name, yearLaunch

# Identificando os tipos de dados

puts name.class
puts yearLaunch.class
puts price.class
puts planIncluded.class 
puts true.class
puts false.class

```

## Conversão de Tipos

```ruby

puts "Informe o nome da sua classe:"
name = gets.chomp.to_i # Converte a string para inteiro

```

## Concatenação e Exibição de Valores

```ruby

puts "Nome da classe: " + name.to_s
puts "Ano de lançamento: " + yearLaunch.to_s
puts "Preço da classe: " + price.to_s

```

## Interpolação de Strings

```ruby

puts "Nome da classe: #{name}"
puts "Ano de lançamento: #{yearLaunch}"

```

### Tipos de Dados em Ruby

#### Tipos Básicos

- **String**: Sequência de caracteres, como `"Hello, World!"`.
- **Integer**: Números inteiros, como `42`.
- **Float**: Números decimais, como `3.14`.
- **Boolean**: Valores verdadeiros ou falsos, como `true` e `false`.
- **NilClass**: Representa a ausência de valor, como `nil`.

#### Estruturas de Dados

- **Array**: Coleção ordenada de elementos, como `[1, 2, 3, 4, 5]`.
- **Hash**: Coleção de pares chave-valor, como `{ "name" => "Alice", "age" => 30 }`.
- **Symbol**: Sequência imutável de caracteres, como `:name`.
- **Range**: Representa um intervalo de valores, como `1..5`.

#### Expressões Regulares

- **Regexp**: Representa uma expressão regular, como `/\d+/`.
- **MatchData**: Resultado de correspondência, como `/(\d+)/.match("123")`.

#### Funções e Métodos

- **Proc**: Representa um bloco de código, como `Proc.new { |x| x * 2 }`.
- **Method**: Representa um método, como `method(:foo)`.
- **UnboundMethod**: Representa um método não vinculado, como `String.instance_method(:upcase)`.
- **Binding**: Representa um contexto de execução, como `binding`.

#### Classes e Módulos

- **Class**: Representa uma classe, como `String`.
- **Module**: Representa um módulo, como `Math`.
- **Object**: Representa um objeto, como `Object.new`.
- **Struct**: Estrutura de dados, como `Struct.new(:name, :age)`.

#### Entrada e Saída

- **File**: Representa um arquivo, como `File.open("foo.txt")`.
- **IO**: Representa entrada/saída, como `$stdin` e `$stdout`.
- **Dir**: Representa um diretório, como `Dir.pwd`.

#### Tempo e Datas

- **Time**: Representa uma data e hora, como `Time.now`.
- **Date**: Representa uma data, como `Date.today`.

#### Controle de Fluxo

- **Thread**: Representa uma thread, como `Thread.new { ... }`.
- **Mutex**: Representa um mutex, como `Mutex.new`.
- **Fiber**: Representa uma fibra, como `Fiber.new { ... }`.
- **Enumerator**: Representa um enumerador, como `1.upto(10)`.

#### Números Avançados

- **Rational**: Representa um número racional, como `Rational(2, 3)`.
- **Complex**: Representa um número complexo, como `Complex(1, 2)`.

#### Codificação

- **Encoding**: Representa uma codificação de caracteres, como `Encoding::UTF_8`.

#### Exceções e Erros

- **Exception**: Representa uma exceção, como `StandardError`.
- **FiberError**: Erro de fibra, como `FiberError`.
- **ZeroDivisionError**: Erro de divisão por zero, como `ZeroDivisionError`.
- **ArgumentError**: Erro de argumento inválido, como `ArgumentError`.
- **RuntimeError**: Erro de tempo de execução, como `RuntimeError`.
- **SystemExit**: Representa uma saída do sistema, como `SystemExit`.

---

### Tipo Boolean em Ruby

No Ruby, temos sim o tipo **Boolean**, mas ele não é uma classe separada.  
Em vez disso, usamos as constantes `true` e `false`, que pertencem às classes:

- `TrueClass` → Representa o valor verdadeiro (`true`).
- `FalseClass` → Representa o valor falso (`false`).

O tipo Boolean é uma subclasse da classe `Object`, que é a classe mãe de todas as classes no Ruby.


#### Módulos

Os módulos são usados para organizar métodos e classes.

```ruby

module Saudacao
  def self.ola(nome)
    "Olá, #{nome}!"
  end
end

puts Saudacao.ola("Mundo")

```


### Conversão de Tipos

```ruby

puts "Informe o nome da sua classe:"
name = gets.chomp.to_i # Converte a string para inteiro

puts "Informe o nome do sua classe"
name = gets.chomp.to_f # Converte a string para float

```

### Concatenação e Exibição de Valores

```ruby

puts "Nome da classe: " + name 
puts "Ano de lançamento: " + yearLaunch.to_s # Converte para string
puts "Preço da classe: " + price.to_s

```

### Interpolação de Strings

```ruby

puts "Nome da classe: #{name}"
puts "Ano de lançamento: #{yearLaunch}" # A conversão para string é automática

```

### Operadores Aritméticos

```ruby

bigger = num1 > num2 # '>' representa "maior que"
smaller = num1 < num2 # < representa "menor que"
equal = num1 == num2 # Verifica se são iguais
bigger_or_equal = num1 >= num2 # >= representa "maior ou igual"
smaller_or_equal = num1 <= num2 # <= representa "menor ou igual"

```

### Operadores Lógicos

```ruby

puts ((2 > 4) and (3 > 1)) # Ambos precisam ser verdadeiros para retornar true
puts ((2 > 4) or (3 > 1))  # Apenas um lado precisa ser verdadeiro para retornar true

```

### Operadores Especiais

```ruby

print ('a'..'z').to_a # Converte o intervalo de caracteres em array
print (1..5).to_a # Converte o intervalo numérico para um array

```

### Manipulação de Strings

```ruby

puts des2.upcase # Converte todos os caracteres para maiúsculas
puts des2.downcase # Converte todos os caracteres para minúsculas
puts des2.capitalize # Apenas a primeira letra fica maiúscula
puts des2.swapcase # Alterna entre maiúsculas e minúsculas
puts des2.chop # Remove o último caractere da string

```

### Outras Operações com Strings

```ruby

puts "Ruby".reverse # Inverte a string
puts "Ruby".length # Retorna o tamanho da string
puts "Ruby".gsub("R", "J") # Substitui "R" por "J"
puts "Hello, world!".include?("world") # Retorna true se a string contém "world"
puts "    Ruby    ".strip # Remove espaços extras no início e no fim da string
puts "apple,banana,grape".split(",") # Divide a string em um array
puts "=" * 20 # Repete a string especificada

```

### Comparação de Números

```ruby

a = 100
b = 200

if a > b
    puts "#{a} maior que #{b}" # Se a for maior que b, essa linha será executada.
else
    puts "#{b} maior que #{a}" # Se a e b forem iguais, essa linha será executada.
end

```

### Entrada de Dados e Condições

```ruby

puts "Digite o seu nome do filme: " # Solicita ao usuário que digite o nome do filme
name = gets.chomp # Captura a entrada do usuário e remove a quebra de linha

puts "Digite o ano de lançamento: " # Solicita o ano de lançamento do filme
ano = gets.chomp.to_i # Converte a entrada para um número inteiro

puts "Digite a nota de classificação: " # Solicita a nota de classificação do filme
classificacao = gets.chomp.to_f # Converte a entrada para um número decimal (float)

if classificacao > 8.0 and ano > 2015 # Se a nota for maior que 8.0 e o filme for lançado após 2015, ele é recomendado 
    puts "O filme #{name} é bom. Recomendo assisti-lo." 
else
    puts "O filme ainda não atingiu uma boa nota, por isso não recomendo." # Caso contrário, ele não é recomendado  
end 

```

### Estruturas Condicionais - Case

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

### Estruturas de Repetição

```ruby

moviesList = ["Black desert", "pupilo azul", "principe deserdado", "Ji-gwi"]

# Iterando valores de um Array

moviesList.each do |movie|
  puts movie
end

# Utilizando o break

moviesList.each do |movie|
  break if movie == "principe deserdado"
  puts movie
end

# Utilizando o next

moviesList.each do |movie|
  next if movie == "pupilo azul"
  puts movie
end

```

### Métodos

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

# Método para cadastrar um filme

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

# Método com parâmetros

def full_name(fname, lname)
  puts "Nome completo: #{fname} #{lname}"
end

full_name("Rodrigo", "Silva")

```

### Operações Matemáticas

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

### Blocks (Blocos)

Blocos são trechos anônimos de código que aceitam entradas de argumentos e retornam um determinado valor.

```ruby

def hello
  yield # yield é uma palavra reservada que chama o bloco.
end

hello {puts "Olá, mundo!"}
hello {puts "Olá, mundo 2!"}
hello {puts "Olá, mundo 3!"}

```

#### Outro exemplo com yield

```ruby

def one_two_three
  yield 1
  yield 2
  yield 3
end

one_two_three { |number| puts number * 10 }

```

**Nota:** Os pipes `| |` são usados para passar argumentos para o bloco acima.

### Arrays em Ruby

#### Criação de Arrays

```ruby

movies = [] # Inicializa um array vazio.
puts movies.class

movies2 = Array.new # Outra forma de inicializar um array.
puts movies2.class

movies_test = ["Ousama Ranking", "Solo Leveling"] # Array com múltiplos valores.
puts movies_test

two_movies = Array.new(2, "Ousama Ranking") # Cria um array com dois valores iguais.
puts two_movies

```

#### Utilizando exponenciação em Arrays

```ruby

numbers = Array.new(5) { |x| x ** 2 } 
puts numbers # Saída: [0, 1, 4, 9, 16]

```

#### Diferentes formas de criar Arrays

```ruby

num = Array.[](1, 2, 3)
puts num

num2 = Array(1..5) # Usando operador de intervalo.
puts num2

```

#### Arrays com múltiplos valores

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

```ruby

movies_test.each { |a| puts a }

```

### Indexação e Atribuição em Arrays

```ruby

puts movies[0]   # Primeiro item
puts movies[-1]  # Último item
puts movies[1, 2] # Intervalo de valores

movies[2] = "Scissor Seven" # Alterando um índice
puts movies

```

#### Métodos úteis para Arrays

```ruby

puts movies.length  # Tamanho do array
puts movies.first   # Primeiro item
puts movies.last    # Último item

movies << "Cowboy Bebop" # Adicionando valores
puts movies

puts movies.append("Bleach")
puts movies.sort()    # Ordenação
puts movies.shuffle() # Embaralhamento

```

### Recuperando índice e valor

```ruby

movies.each_with_index { |value, index| puts "#{index} - #{value}" }

```

### Hashes em Ruby

#### Criando um Hash

```ruby

mov = Hash.new
puts mov.class # Retorna Hash

movie = {"name" => "Ousama Ranking", "year" => "2023"}
puts movie

movie2 = {:name => "Solo Leveling", :year => "2024"}
puts movie2

```

### Iterando valores de um Hash

#### Usando `keys` e `values`

```ruby

puts movie2.keys   # Retorna as chaves
puts movie2.values # Retorna os valores

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
```ruby

movie2.each { |key, value| puts "#{key} - #{value}" }

```

### Métodos úteis para Hashes

```ruby

puts movie.size   # Retorna tamanho do hash
puts movie.length # tamanho (ou duração) de um objeto chamado
puts movie.to_a   # Converte o hash em array
puts movie.max    # Maior chave-valor no hash
puts movie.min    # Menor chave-valor no hash
movie.store(:genre, "aventura") # Adiciona nova chave e valor ao hash
puts movie.fetch("name")  # Recupera o valor da chave informada
movie.clear() # Limpa o hash
puts movie

```

### Lambda
Lambda é uma função anônima que pode ter qualquer número de argumentos e um corpo de execução.

```ruby

lambda_example = lambda { |name| "Olá, #{name}!" }
puts lambda_example.call("Mundo") # Retorna "Olá, Mundo!"

multiply = lambda { |a, b| a * b }
puts multiply.call(4, 5) # Retorna 20

```

### **Diferentes tipos de Lambdas:**

#### Exemplo: Soma de dois números

```ruby

sum = lambda { |a, b| a + b }
puts sum.call(10, 20) # Retorna 30

```

#### Função anônima que divide números

```ruby

div = lambda { |a, b| a / b }
puts div.call(20, 4) # Retorna 5

```

#### Adicionando um novo item ao hash

```ruby

movie.store(:genre, "Aventura")
puts movie

```

#### Limpa todos os itens do hash

```ruby

movie.clear()
puts movie

```

### **Simbólos em ruby:**

#### Exemplo com `.object_id`:

##### objetos que representam nomes de forma imutável e são armazenados em memória de forma única. 

##### São prefixados com dois-pontos (:) e são frequentemente usados como chaves em hashes ou como argumentos para métodos que requerem identificadores. 

##### Utilizamos o <.object_id> para atribuir um id aleatório.

```ruby

puts :nome.object_id 

```

#### Reutilização de memoria com <.object_id> para a mesma variável.

```ruby

puts "nome".object_id # Aqui vai atribui um valor aleatório, será alocada na mesma posição da memoria da string abaixo.

puts "nome".object_id # Aqui vai atribui um valor aleatório, será alocada na mesma posição da memoria da string acima.


```