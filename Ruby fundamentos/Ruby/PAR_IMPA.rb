puts "Digite um número para verificar se ele é par ou ímpar: "
num = gets.chomp.to_i

puts num % 2 == 0? "O número digitado é par!" : "O número digitado é ímpar!"