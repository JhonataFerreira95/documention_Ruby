lista = []
par = []
impar = []
count = 0


while true
  count += 1
  puts "Digite o valor Desejado: "
  lista << gets.chomp.to_i
  if lista.last % 2 == 0
    par << lista[count]
  else
    impar << lista[count]
  end
  puts "Deseja continuar[S/N]: "
  sair = gets.chomp.upcase
  if sair.include?("N")
    break
  end
end

print lista, par, impar