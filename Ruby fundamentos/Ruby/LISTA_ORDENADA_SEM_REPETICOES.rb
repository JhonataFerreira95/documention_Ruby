lista = []

5.times do |i|
  puts "Digite o valor para ser adicionado a lista: "
  lista << gets.chomp.to_i
  case lista
    when lista[i] == 1
      puts lista
    when lista[i] == 2
      puts lista
    when lista[i] == 3
      puts lista
    when lista[i] == 4
      puts lista 
    when lista[i] == 5
      puts lista
  end
end

puts "A posiçao dos número em sua lista foram #{lista}"

if lista[1] == 1
    
end