require 'securerandom' 

jogadas = {}
jogadores = [:jogador1, :jogador2, :jogador3, :jogador4]

jogadores.each do |nome|
    jogadas[nome] = SecureRandom.random_number(1..6)
end

puts jogadas.sort