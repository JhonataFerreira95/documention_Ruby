# Documentação Ruby

## Índice

1. [Lógica com Ruby](#lógica-com-ruby)


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