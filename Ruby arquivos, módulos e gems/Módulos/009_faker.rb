# Para importação da gem.

require "faker"

# Para ver o tipo de dado do <Faker>.

puts Faker.class # Vai retorna que o tipo <Faker.class> é uma módulo(gem).

# Utilidades do <Faker>.

# Quando passamos <::>, siginifica que estamos querendo utilizar um módulos com os primeiros <:> e no segundo a referência a classe que está dentro do módulo que vamos usar.

puts Faker::Name.class # Verificando o tipo com <.class>, vai retorna um móludo <Faker> e uma classe <Name>, já que <Name> é uma classe do módulo <Faker>.

# Tipos de Name no módulo <Faker>.

puts Faker::Name.name # Gera um nome aleatório.
puts Faker::Name.first_name # Gera o primeiro nome aleatório.
puts Faker::Name.last_name # Gera o último nome aleatório.

# Trabalhando com instrumento de uma música com <Faker>.

puts Faker::Music.instrument 

# Trabalhando com módulo dentro de submódulo.

# Nesse caso, estamo usando o submódulo <Sports> e fazendo referência a outro submódulo que está dentro de <Sports>, que no caso é <Football>.
# Dentro de <Football> vamos utilizar a classe <.player> para pegar um jogador de forma aleatória.

puts Faker::Sports::Football.player # uando passamos <::>, siginifica que estamos querendo utilizar um módulos com os primeiros <:> e no segundo a referência a classe que está dentro do módulo que vamos usar.

