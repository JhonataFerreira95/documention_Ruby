puts "Bem-vindo ao medido de peso \n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n"

maior = 0 
menor = 0

for i in 1..5
  puts "O próximo peso a ser digitado é #{i}°: "
  peso = gets.chomp.to_f
  if i == 1
    maior = peso
    menor = peso
  else
    if peso > maior
        maior = peso
    end
    if peso < menor
        menor = peso      
    end
  end
end

puts "O maior peso foi de #{maior}kg \n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n"
puts "O menor peso foi de #{menor}kg \n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n"

