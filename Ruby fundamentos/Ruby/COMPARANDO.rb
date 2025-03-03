puts "Bem vindo ao comparador de 2 números!"

puts "Digite o primeito número a ser comparado (OBS:tem que ser número inteiro): "
num1 = gets.chomp.to_i

puts "Digite o segundo número a ser comparado (OBS:tem que ser número inteiro): "
num2 = gets.chomp.to_i

if num1 > num2
  puts "O primeiro número digitado #{num1} é maior que #{num2}!"
elsif num2 > num1 
  puts "O segundo número digitado #{num2} é maior que #{num1}!"
end