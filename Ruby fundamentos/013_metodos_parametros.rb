# 1-Método que recebe dois parâmetros sobre nome
def full_name(fname, lname)
  puts "Nome completo: #{fname} #{lname}"
end

full_name("Rodrigo", "Macedo")
full_name("Sicrano", "Fulano")

# 2-Método que soma dois números
def sum(a, b)
  return a + b
end

puts sum(10, 20)

# 3-Argumentos default num método
def address(country="Brasil")
  puts "Eu moro no #{country}"
end

address()
address("Portugal")

# 4-Avaliação do Filme
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

puts "Deseja fazer quantas avaliações:"
rating = gets.chomp.to_i

rating_movie(rating)

# 5-avaliação do filme versão 2

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

puts "Deseja fazer quantas avaliações: "
qtAv = gets.chomp.to_i

av(qtAv)