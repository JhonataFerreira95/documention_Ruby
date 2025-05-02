soma = 0
count = 0

for i in 1..6
  puts "digite o valor #{i}: "
  num = gets.chomp.to_i
  soma += num
  count += 1
end

if soma % 2 == 0
  puts "A soma dos valores é #{soma}, assim sendo pares!"
else
  puts "A soma dos valores é #{soma}, assim sendo ímpares!"
end
