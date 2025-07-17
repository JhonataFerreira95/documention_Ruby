require 'securerandom' 

jogador = par = impa = pc = 0

puts "Bem vindo ao game de par ou ímpar!"

pc = SecureRandom.random_number(0..1000)

while true 

  puts "=-=-="*8
  puts "Escolha entre par ou ímpar[I/P]: "
  puts "=-=-="*8
  jogador = gets.chomp.to_i


end