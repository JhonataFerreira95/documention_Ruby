require 'securerandom'

sorteio = []
count = 1

puts "Quantos jogos você quer que eu sorteie? "
vezes_jogadas = gets.chomp.to_i

while count <= vezes_jogadas 
  puts "Jogo #{count}: #{sorteio}" 
  count += 1
end
