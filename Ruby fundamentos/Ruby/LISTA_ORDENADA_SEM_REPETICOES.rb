lista = []

5.times do |i|
  puts "Digite o valor para ser adicionado a lista: "
  lista << gets.chomp.to_i 
end

puts "A posiçao dos número em sua lista foram #{lista}"