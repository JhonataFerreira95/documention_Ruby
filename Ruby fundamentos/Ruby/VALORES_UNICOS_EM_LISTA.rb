valores = []
count = 0

while true
  puts "Digite um valor: "
  valores << gets.chomp.to_i
  count += 1
  if valores.include?(20)
    break
  end
  puts valores, count
end

puts "Todos os valores únicos digitados foram #{valores.sort!}"