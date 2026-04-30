=begin

Faça um programa que tenha uma função chamada maior(), que receba vários parâmetros com valores inteiros.
Seu programa tem que analisar todos os valores e dizer qual deles é o maior.

=end

def larger(* number)
    
end

cont = 0

while true

  puts "Digite o número desejado para comparação: "
  larger << gets.chomp.to_i

  puts "Deseja continuar digitando?[S/N] "
  option = gets.chomp.upcase

  if option.include?("N")
    puts "Saindo..."
    break
  end

end