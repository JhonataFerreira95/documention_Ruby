valores = []
count = 0

while count = 0
  count += 1
  puts "Digite um valor: "
  valores << gets.chomp.to_i
  if valores[count] == valores[count]
    valores.delete_at(count)
  end
  puts "o valor digitado #{valores} seu índice #{count}"
  puts "Para sair do programa digite[S]: "
  sair = gets.chomp.upcase
  if sair.include?("S")
    break
  end
end

puts "Todos os valores únicos digitados foram #{valores.sort!}"