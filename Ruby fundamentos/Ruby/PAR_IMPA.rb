puts "Digite um número para verificar se ele é par ou ímpar: "
num = gets.chomp.to_i

if num % 2 == 0
  puts "O número digitado é par!"
else
  puts "O número digitado é ímpar!"
end