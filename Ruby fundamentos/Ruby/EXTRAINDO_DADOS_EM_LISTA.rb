count = vezes_cinco = 0
lista =[]

while true

  puts "Digite um valor que vai ser adicionado na lista: "
  lista << gets.chomp.to_i

  count += 1

  
  if lista.include?(5)
    vezes_cinco += 1
  end

  puts "Deseja continuar adicionando números na lista [S/N]: "
  decisao = gets.chomp.upcase

  if decisao.include?("N")
    break
  end
  
end

puts "Valores digitado na ordem decrescente #{lista.sort.reverse} e a quantidade de números que foi digitada #{count}."
puts "A quantidade vezes que o número 5 foi digitado #{vezes_cinco}, está presente na #{lista}"

