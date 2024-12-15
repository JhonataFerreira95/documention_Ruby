# Documentação Ruby

## Índice
1. [Introdução](#introdução)
2. [Lógica com Ruby](#lógica-com-ruby)
3. [Arquivos, Módulos e Gems](#arquivos-módulos-e-gems)
4. [Programação Orientada a Objetos (POO)](#programação-orientada-a-objetos-poo)
5. [Ruby Avançado](#ruby-avançado)
6. [Ruby on Rails](#ruby-on-rails)

---

## Introdução
Ruby é uma linguagem de programação dinâmica, open-source, focada na simplicidade e produtividade. Seu criador, Yukihiro Matsumoto, a projetou com o objetivo de tornar a programação mais humana e intuitiva.

- **Principais características:**
  - Sintaxe elegante e legível.
  - Suporte a múltiplos paradigmas (orientado a objetos, funcional).
  - Forte comunidade e ecossistema.

---

## Lógica com Ruby
Ruby oferece uma abordagem simples e intuitiva para lógica de programação. A seguir, abordamos os principais conceitos:

### Estruturas de Controle
```ruby
# Condicional
if x > 10
  puts "Maior que 10"
elsif x == 10
  puts "Igual a 10"
else
  puts "Menor que 10"
end

# Loop
5.times do |i|
  puts "Número: #{i}"
end
```

### Métodos
```ruby
def saudacao(nome)
  "Olá, #{nome}!"
end

puts saudacao("Ana")
```

---

## Arquivos, Módulos e Gems

### Trabalhando com Arquivos
```ruby
# Leitura
File.open("exemplo.txt", "r") do |arquivo|
  puts arquivo.read
end

# Escrita
File.open("exemplo.txt", "w") do |arquivo|
  arquivo.puts "Nova linha no arquivo"
end
```

### Módulos
Os módulos são usados para organizar métodos e classes.
```ruby
module Saudacao
  def self.ola(nome)
    "Olá, #{nome}!"
  end
end

puts Saudacao.ola("Mundo")
```

### Gems
As gems são bibliotecas reutilizáveis. Use o Bundler para gerenciar dependências.
```bash
# Instalar uma gem
gem install rails

# Adicionar ao Gemfile
bundle install
```

---

## Programação Orientada a Objetos (POO)
Ruby é completamente orientado a objetos, com suporte nativo a classes, herança e polimorfismo.

### Classes e Objetos
```ruby
class Pessoa
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def saudacao
    "Olá, meu nome é #{@nome} e tenho #{@idade} anos."
  end
end

ana = Pessoa.new("Ana", 19)
puts ana.saudacao
```

### Herança
```ruby
class Animal
  def falar
    "Som genérico"
  end
end

class Cachorro < Animal
  def falar
    "Au au!"
  end
end

cachorro = Cachorro.new
puts cachorro.falar
```

---

## Ruby Avançado

### Metaprogramação
```ruby
class Pessoa
  attr_accessor :nome
end

pessoa = Pessoa.new
pessoa.nome = "Ana"
puts pessoa.nome
```

### Blocks, Procs e Lambdas
```ruby
# Block
3.times { |i| puts "Número: #{i}" }

# Proc
imprimir = Proc.new { |x| puts x }
imprimir.call("Olá, mundo!")

# Lambda
saudacao = ->(nome) { "Olá, #{nome}" }
puts saudacao.call("Ana")
```

---

## Ruby on Rails
Rails é um framework web popular escrito em Ruby, que segue o padrão MVC (Model-View-Controller).

### Criação de um Projeto
```bash
rails new meu_projeto
```

### Estrutura do Projeto
- **app/models**: Contém os modelos.
- **app/views**: Contém as views.
- **app/controllers**: Contém os controladores.

### Exemplos Básicos
#### Modelo
```ruby
class Post < ApplicationRecord
  validates :titulo, presence: true
end
```

#### Controlador
```ruby
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
end
```

#### View
```erb
<% @posts.each do |post| %>
  <h1><%= post.titulo %></h1>
<% end %>
```

---

### Conclusão
Ruby é uma linguagem poderosa e expressiva que, combinada com o Rails, permite o desenvolvimento de aplicações robustas e escaláveis. Com sua comunidade ativa, o aprendizado é facilitado, e as possibilidades são vastas.
