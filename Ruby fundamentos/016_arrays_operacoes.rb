movies = ["Solo leveling", "Ousama raking", "Frieren"]

# 1-Indexação e Atribuição.

# Aqui ele retorna o primeiro filme no terminal.

puts movies[0] 

# Aqui ele retorna o último filme no terminal.

puts movies[-1] 

# Aqui retorna o intervalo de valores no array. Já que é de forma ordena e começamos a contagem do [0].

puts movies[1, 2] 

# alterando indices.

movies[2] = "Scissor seven" # alterando indices.
puts movies 

# Adicionando valores com binary left-shift.

movies << "Cowboy bebop" 
puts movies

# 2-Métodos úteis.

# Método <length> para descobri o tamanho do array.

puts movies.length 

# Método <first> para trazer o primeiro item do array.

puts movies.first

# Método <last> para trazer o último item do array.

puts movies.last

# Método <append> para adicionar ao final ao array.

puts movies.append("Bleach")
puts movies

# Método <sort> para ordenação de um array.

puts movies.sort()

# Método <shuffle> para embaralhando os dados de um array.

puts movies.shuffle

# 3-Recuperando índice e valor.

movies.each_with_index{ |value, index| puts "#{index} #{value}"} # Trazer o valor e pegar o indice associado ao item no array.
