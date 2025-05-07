
puts "Digite o valor da razão: "
razao = gets.chomp.to_i

puts "Digite o primeiro termo: "
termo = gets.chomp.to_i

decimo = termo + (10 - 1) * razao

for i in (termo..decimo).step(razao)
  puts "-> #{i} \n=-=-=-=\n"
end

puts "Acabou! \n=-=-=-=\n"
