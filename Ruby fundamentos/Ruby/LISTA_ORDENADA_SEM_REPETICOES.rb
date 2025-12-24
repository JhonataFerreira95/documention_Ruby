lista = []

5.times do |i|
  puts "Digite o valor para ser adicionado a lista: "
  lista << gets.chomp.to_i
  if lista[i] <= i
    lista.insert(0, i)
    puts lista
  end
end

puts "A posiçao dos número em sua lista foram #{lista}"