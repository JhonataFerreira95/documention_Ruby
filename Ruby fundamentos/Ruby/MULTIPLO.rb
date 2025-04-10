puts "Bem vindo ao verificado de multiplo! \n--------------------------\n"

puts "Digite um número para verificar se ele é múltiplo de 3, maior que 50 ou negativo: "
num = gets.chomp.to_f


if num > 50
  puts "O número #{num} é maior que 50!"
elsif (num % 3) == 0 and num < 0
  puts "O número digitado #{num} é múltiplo de 3 e é nagativo!"  
elsif (num % 3) == 0
  puts "O número digitado #{num} é múltiplo de 3!"  
elsif num < 0
  puts "O número digitado #{num} é nagativo!"
else 
  puts "Digite um número válido!"
end
