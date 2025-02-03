# # Alternativa 1 - for

# for i in 1..5
#   puts i
# end

# # Alternativa 2 - each 

# (1..5).each do |i|
#   puts i
# end  

=begin

O each no Ruby é usado para percorrer todos os elementos de uma coleção (como um array ou hash). Ele executa um bloco de código para cada elemento
Exemplo:[1, 2, 3].each { |num| puts num }  # Imprime 1, depois 2, depois 3

=end

moviesList = ["Black desert", "pupilo azul", "principe deserdado", "Ji-gwi"]

# 1-Iterando valores de um Array

moviesList.each do |movie|
  puts movie
end

# 2-Utilizando o break

moviesList.each do |movie|
  break if movie == "principe deserdado"
  puts movie
end

=begin

O break se encerra o loop quando a condição for atendida, mesmo que o loop ainda não tenha chegado ao final. 
Exemplo:1..10. Você utiliza o break para para o loop no 4, ele se encerra no 4.

=end

# 3-Utilizando o next

moviesList.each do |movie|
  next if movie == "pupilo azul"
  puts movie
end

=begin 

O next basicamente pula para a próxima interação, sendo o seguinte exemplo:"Black desert", <"pupilo azul">, "principe deserdado".
A interação que foi pulado foi o <Pupilo azul>

=end

# 4-Avaliação do filme

puts "Digite o nome do filme: "
movieName = gets.chomp

puts "Digite quantas avaliações deseja fazer no filme: "
movieRating = gets.chomp.to_i

sum = 0

movieRating.times do 
  puts "Digite a nota para o filme: "
  note = gets.chomp.to_i
  sum += note
end
avarage = sum / movieRating

puts "Média da avaliação do filme #{movieName} é %.2f" %avarage

=begin

Coletar o nome do filme:

puts "Digite o nome do filme: "
movieName = gets.chomp
Exibe uma mensagem pedindo o nome do filme e armazena o que o usuário digitar na variável movieName.

Pedir o número de avaliações:

puts "Digite quantas avaliações deseja fazer no filme: "
movieRating = gets.chomp.to_i
Solicita quantas avaliações o usuário quer fazer e guarda essa quantidade como um número na variável movieRating.

Calcular a soma das notas:

sum = 0

movieRating.times do 
  puts "Digite a nota para o filme: "
  note = gets.chomp.to_i
  sum += note
end
Inicializa a variável sum para armazenar a soma das notas. Depois, repete o processo de pedir e somar notas o número de vezes especificado por movieRating.

Calcular a média e exibir o resultado:

avarage = sum / movieRating
puts "Média da avaliação do filme #{movieName} é %.2f" % avarage
Calcula a média das notas dividindo a soma total pela quantidade de avaliações e exibe a média com duas casas decimais, junto com o nome do filme.

=end