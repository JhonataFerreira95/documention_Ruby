lista = []

5.times do |i|

  puts "Digite um valor:"
  valor = gets.chomp.to_i

  posicao = 0
  while posicao < lista.length && lista[posicao] < valor
    posicao += 1
  end

end

puts "A posiçao dos número em sua lista foram #{lista.inspect}"

