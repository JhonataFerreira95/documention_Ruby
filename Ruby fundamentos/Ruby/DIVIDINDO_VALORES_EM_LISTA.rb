lista = []
par = []
impar = []
count = 0


while true
  puts "Digite o valor Desejado: "
  lista << gets.chomp.to_i
  if lista.last % 2 == 0
    par << lista[count]
  else
    impar << lista[count]
  end
  count += 1
  puts "Deseja continuar[S/N]: "
  sair = gets.chomp.upcase
  if sair.include?("N")
    break
  end
end

print "A lista é #{lista}, os números pares digitados #{par}, número ímpares digitados #{impar} e a quantidade de vezes digitadas #{count}"