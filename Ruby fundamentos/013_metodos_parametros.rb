# 1-Método que recebe dois parâmetros sobre nome
# Este método recebe dois parâmetros, fname e lname, e imprime o nome completo.
def full_name(fname, lname)
  puts "Nome completo: #{fname} #{lname}"
end

# Chamadas de exemplo para o método full_name
full_name("Rodrigo", "Macedo")
full_name("Sicrano", "Fulano")

# 2-Método que soma dois números
# Este método recebe dois parâmetros, a e b, e retorna a soma deles.
def sum(a, b)
  return a + b
end

# Exemplo de chamada para o método sum
puts sum(10, 20)

# 3-Argumentos default num método
# Este método recebe um parâmetro opcional country, com valor padrão "Brasil".
def address(country="Brasil")
  puts "Eu moro no #{country}"
end

# Chamadas de exemplo para o método address
address()
address("Portugal")

# 4-Avaliação do Filme
# Este método recebe um parâmetro qtdRating, que indica a quantidade de avaliações.
# Ele solicita o nome do filme e as notas, calcula a média e a exibe.
def rating_movie(qtdRating)
  puts "Informe o nome do filme:"
  movie_name = gets.chomp
  sum = 0
  for i in 1..qtdRating
      puts "Digite a nota para o filme:"
      note = gets.chomp.to_f
      sum += note
  end
  puts "Média de avaliação do filme #{movie_name} é: #{sum / qtdRating}"
end

# Solicita ao usuário a quantidade de avaliações e chama o método rating_movie
puts "Deseja fazer quantas avaliações:"
rating = gets.chomp.to_i

rating_movie(rating)

# 5-avaliação do filme versão 2
# Este método é uma versão alternativa do método de avaliação de filmes.
# Ele recebe um parâmetro avaliacao, solicita o nome do filme e as notas, calcula a média e a exibe.
def av(avaliacao)
    puts "Informe o nome do filme: "
    movie_name = gets.chomp
    sum = 0 
    for i in 1..avaliacao
      puts "Digite o nota do filme: "
      note = gets.chomp.to_f
      sum += note
    end
    media = sum / avaliacao
    puts "Média de avaliação do filme #{movie_name} é: %2.f" %media
end

# Solicita ao usuário a quantidade de avaliações e chama o método av
puts "Deseja fazer quantas avaliações: "
qtAv = gets.chomp.to_i

av(qtAv)