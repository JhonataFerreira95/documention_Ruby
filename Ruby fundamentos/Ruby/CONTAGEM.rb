puts "Bem-Vindo ao app de contagem!"

puts "Digite o número que gostria iniciar a contagem de X até 0 (EX:120): "
cont = gets.chomp.to_i

while cont  >= 0
  puts cont
  cont -= 1
end