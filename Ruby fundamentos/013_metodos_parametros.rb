# 1-Método que recebe dois parâmetros sobre nome
# Este método recebe dois parâmetros, fname e lname, e imprime o nome completo.

def full_name(fname, lname)
  puts "Nome completo: #{fname} #{lname}"
end

# Chamadas de exemplo para o método full_name

full_name("Rodrigo", ) # Aqui acontece algo engraçado porém muito importante! Caso os dois parâmetros não tenham sido definidos, vai ocasinar em um erro de argumento.
# O erro acontece porque o método exige dois parâmetros, e a chamada full_name("Rodrigo", ) é inválida.
#Para corrigir, forneça sempre dois argumentos ou defina um valor padrão para lname. 
full_name("Sicrano", "Fulano")

# 2-Método que soma dois números
# Este método recebe dois parâmetros, a e b, e retorna a soma deles.

def sum(a, b)
  return a + b # O return retorna o valor da soma de a e b para o chamador do método.
end

# Exemplo de chamada para o método sum

sum(10, 20) # Quando se usa returno, é necessário colocar o método dentro de um puts para que o valor seja exibido.
puts sum(10, 20)

# 3-Argumentos default num método
# Este método recebe um parâmetro opcional country, com valor padrão "Brasil".

def address(country="Brasil") # Aqui definimos por padrão o país Brasil, caso não seja informado.
  puts "Eu moro no #{country}"
end

# Chamadas de exemplo para o método address

address()
address("Portugal") # Isso não significa que só porque tenho um parâmetro default, eu não posso sobrescrevelo.

# 4-avaliação do filme versão 2
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