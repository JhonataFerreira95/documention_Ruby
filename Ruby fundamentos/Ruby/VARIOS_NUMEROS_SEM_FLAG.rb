
cont = soma_total = numero_inteiro = 0

while true

  puts "Digite um número inteiro(Para o programa encerrar digite 999): "
  numero_inteiro = gets.chop.to_i
  if numero_inteiro == 999
    break 
  end
  cont += 1
  soma_total += numero_inteiro

end

puts "A quantidade de números digitada foi #{cont}, a soma total entre eles foram #{soma_total}"