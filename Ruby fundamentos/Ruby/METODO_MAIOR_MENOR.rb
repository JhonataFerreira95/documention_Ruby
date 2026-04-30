=begin

Faça um programa que tenha uma função chamada maior(), que receba vários parâmetros com valores inteiros.
Seu programa tem que analisar todos os valores e dizer qual deles é o maior.

=end

def larger(* number)

  s = number

  puts s.sort
    
end

puts larger(1, 2, 5, 69, 100, 240)


cont = 0

numbers = []

while true

  puts "Digite os número desejado para comparação: "
  number_option = gets.chomp.to_i

  numbers << number_option

  puts "O indice digitado foi #{numbers[cont]}"

  puts "Deseja continuar digitando?[S/N] "
  option = gets.chomp.upcase

  if option.include?("N")
    puts "Saindo..."
    break
  end

  cont += 1

end


puts larger(*numbers)

