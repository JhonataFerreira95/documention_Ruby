valores = []
count = 0

while true
  puts "Digite um valor: "
  valores << gets.chomp.to_i
  count += 1
  puts "Para sair do programa digite[S]: "
  sair = gets.chomp.upcase
  if sair.include?("S")
    break
  end
  puts valores, count
end

puts "Todos os valores únicos digitados foram #{valores.sort!}"