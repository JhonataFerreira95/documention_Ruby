puts ("=-=-=" * 8)
puts "Bem-vindo ao identificador de sexo [M/F]"
puts ("=-=-=" * 8)

puts "Digite o seu sexo [M/F]: "
sexo = gets.chomp.upcase

while "ABCDEGHIJKLOPQRSTUVXYWZ".include?(sexo)
    puts "Digite um sexo válido [M/F]: "
    sexo = gets.chomp.upcase
end

puts "O seu sexo é #{sexo}!"

puts ("=-=-=" * 8)

