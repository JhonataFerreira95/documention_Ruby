pares = []
impares = []

count = 0 

while count < 7

  count += 1

  puts "Digite o valor #{count}"
  valor = gets.chomp.to_i

  if valor % 2 == 0
    pares << valor
  else
    impares << valor
  end

end

puts "Os números pares são #{pares.sort}, os númeors ímpares são #{impares.sort}"