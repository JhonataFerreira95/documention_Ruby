lista = impar = par = []
count = 0


while true
  puts "Digite o valor Desejado: "
  lista << gets.chomp.to_i
  count += 1
  if lista[count] % 2 == 0
    puts "oi" 
  end
  puts "Deseja continuar[S/N]: "
  sair = gets.chomp.upcase
  if sair.include?("N")
    break
  end
end

print lista