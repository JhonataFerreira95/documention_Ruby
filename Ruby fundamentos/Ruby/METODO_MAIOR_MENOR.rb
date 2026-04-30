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

  puts "Digite o número desejado para comparação: "
  numbers = gets.chomp.to_i

  puts "O número digitado foi #{numbers(larger)}"

  puts "Deseja continuar digitando?[S/N] "
  option = gets.chomp.upcase

  if option.include?("N")
    puts "Saindo..."
    break
  end

end

