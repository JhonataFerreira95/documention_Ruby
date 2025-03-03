puts "Bem-vindo ao comparador de vogal ou consoante!"

puts "Digite alguma letra: "
abc = gets.chomp.downcase

vogais = ['a', 'e', 'i', 'o', 'u']

if vogais.include?(abc)
  puts "A letra digitada #{abc}, é uma vogal!"
else
  puts "A letra digitada #{abc}, é uma consoante!"
end