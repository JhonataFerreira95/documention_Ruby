require 'securerandom' 

dados = SecureRandom.random_number(1..6)

jogadas = {jogador1: nil}, {jogador2: nil}, {jogador3: nil}

dados

puts "O primeiro jogador tirou #{jogadas[:jogador1]}"
