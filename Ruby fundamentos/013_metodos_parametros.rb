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