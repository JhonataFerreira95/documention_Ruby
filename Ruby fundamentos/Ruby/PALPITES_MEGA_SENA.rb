require 'SecureRandom'

sorteio = []
count = 1

puts "Quantos jogos você quer que eu sorteie? "
vezes_jogadas = gets.chomp.to_i

puts "-=-=-Sorteando #{vezes_jogadas} vezes!-=-=-"

while count <= vezes_jogadas
  sorteio << SecureRandom.random_number(60)
  puts "Jogo #{count}: #{sorteio}" 
  count += 1
end
