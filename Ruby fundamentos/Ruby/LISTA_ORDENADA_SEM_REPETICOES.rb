lista = []

5.times do |i|
  puts "Digite o valor para ser adicionado a lista: "
  lista << gets.chomp.to_i
end

if lista[i] <= i or lista[i] >= i
  if lista[0] == i
    puts "Adicionando item no índice #{i} da lista!"
    lista.insert(0, i)
  end
end

puts "A posiçao dos número em sua lista foram #{lista}"
