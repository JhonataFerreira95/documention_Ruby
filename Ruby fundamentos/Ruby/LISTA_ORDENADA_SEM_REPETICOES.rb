lista = []

5.times do |i|
  puts "Digite o valor para ser adicionado a lista: "
  lista.insert(-1, gets.chomp.to_i)
  if lista[4] > i
    lista[4] = i
  end
  if lista[3] <= i
    lista[2] = i
  end
end

puts "A posiçao dos número em sua lista foram #{lista}"

