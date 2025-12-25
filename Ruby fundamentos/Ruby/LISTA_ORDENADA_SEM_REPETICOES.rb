lista = []

5.times do |i|
  puts "Digite o valor para ser adicionado a lista: "
  lista.insert(-1, gets.chomp.to_i)
  if i == 0
    lista[4] = i
  elsif i > lista.length - 1
    puts "oi"
  end
end

puts "A posiçao dos número em sua lista foram #{lista}"

