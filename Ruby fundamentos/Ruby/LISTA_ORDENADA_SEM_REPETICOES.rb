lista = []

5.times do |i|
  puts "Digite o valor para ser adicionado a lista: "
  lista << gets.chomp.to_i
  if lista[i] <= i
    puts "Adicionando item no índice #{i} da lista!"
    if lista[i] == i or lista[i] <= i
      lista[0] << i
    end
  end
end

puts "A posiçao dos número em sua lista foram #{lista}"

