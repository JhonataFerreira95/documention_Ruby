# 1-Método para imprimir Hello World

def Hello
  puts "Hello World"
end

# Hello()
# Hello()
# Hello()
# Hello()

# 2-Método para somar dois números

def sum()

  puts 5 + 4

end

# sum()
# sum()

# 3-Método para Cadastrar Filme

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
create_movie()


def full_name

  puts "Digite seu primeiro nome: "
  fName = gets.chomp
  puts "Digite seu sobrenome: "
  lName = gets.chomp
  nFull = fName + " " +lName
  puts "Seu nome completo é: #{nFull}"
  
end

full_name()