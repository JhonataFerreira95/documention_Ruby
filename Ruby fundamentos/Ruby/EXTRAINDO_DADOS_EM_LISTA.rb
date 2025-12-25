count = 0
lista =[]

while true

  puts "Digite um valor que vai ser adicionado na lista: "
  lista << gets.chomp.to_i

  count += 1

  puts "Deseja continuar adicionando números na lista [S/N]: "
  decisao = gets.chomp.to_i.upcase

  if decisao.include?("N")
    break
  end
  
end

puts "Valores digitado na ordem decrescente #{lista.sort.reverse}"

