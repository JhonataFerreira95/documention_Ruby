puts ("=-=-=" * 8)
puts "Bem-vindo ao identificador de sexo [M/F]"
puts ("=-=-=" * 8)

puts "Digite o seu sexo [M/F]: "
sexo = gets.chomp.upcase

while sexo == "M" or sexo == "F"
  puts sexo == "M" ? "Seu sexo é masculino!" : "Seu sexo é feminino!"
  break
end 

puts ("=-=-=" * 8)

