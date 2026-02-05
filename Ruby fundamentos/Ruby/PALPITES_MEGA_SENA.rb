require 'securerandom'

sorteio = []
count = 0

puts "Quantos jogos você quer que eu sorteie? "
palpites = gets.chomp.to_i

while count <= palpites 
  puts "algo #{count}" 
  count += 1
end
