#dados

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

# Tipos de dados em Ruby

=begin
  No Ruby, temos os seguintes tipos de dados:

  - String: Sequência de caracteres, como "Hello, World!".
  - Integer: Números inteiros, como 42.
  - Float: Números decimais, como 3.14.
  - Boolean: Valores verdadeiros ou falsos, como true e false.
  - Array: Coleção ordenada de elementos, como [1, 2, 3, 4, 5].
  - Hash: Coleção de pares chave-valor, como { "name" => "Alice", "age" => 30 }.
  - Symbol: Sequência imutável de caracteres, como :name.
  - NilClass: Representa a ausência de valor, como nil.
  - Range: Representa um intervalo de valores, como 1..5.
  - Regexp: Representa uma expressão regular, como /\d+/.
  - Proc: Representa um bloco de código, como Proc.new { |x| x * 2 }.
  - Method: Representa um método, como method(:foo).
  - Class: Representa uma classe, como String.
  - Module: Representa um módulo, como Math.
  - Object: Representa um objeto, como Object.new.
  - Exception: Representa uma exceção, como StandardError.
  - Time: Representa uma data e hora, como Time.now.
  - Date: Representa uma data, como Date.today.
  - File: Representa um arquivo, como File.open("foo.txt").
  - IO: Representa uma entrada/saída, como $stdin e $stdout.
  - Dir: Representa um diretório, como Dir.pwd.
  - Thread: Representa uma thread, como Thread.new { ... }.
  - Mutex: Representa um mutex, como Mutex.new.
  - Fiber: Representa uma fibra, como Fiber.new { ... }.
  - Enumerator: Representa um enumerador, como 1.upto(10).
  - Struct: Representa uma estrutura de dados, como Struct.new(:name, :age).
  - MatchData: Representa um resultado de correspondência, como /(\d+)/.match("123").
  - Binding: Representa um contexto de execução, como binding.
  - UnboundMethod: Representa um método não vinculado, como String.instance_method(:upcase).
  - Rational: Representa um número racional, como Rational(2, 3).
  - Complex: Representa um número complexo, como Complex(1, 2).
  - Encoding: Representa uma codificação de caracteres, como Encoding::UTF_8.
  - FiberError: Representa um erro de fibra, como FiberError.
  - ZeroDivisionError: Representa um erro de divisão por zero, como ZeroDivisionError.
  - ArgumentError: Representa um erro de argumento inválido, como ArgumentError.
  - RuntimeError: Representa um erro de tempo de execução, como RuntimeError.
  - SystemExit: Representa uma saída do sistema, como SystemExit.
    
=end

# Boolean

=begin
  
No Ruby, temos sim o tipo Boolean, mas ele não é uma classe separada.
Em vez disso, usamos as constantes true e false, que pertencem às classes TrueClass e FalseClass, respectivamente.
O tipo Boolean é uma subclasse da classe Object, que é a classe mãe de todas as classes no Ruby.

end
