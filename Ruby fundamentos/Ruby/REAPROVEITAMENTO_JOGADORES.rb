=begin

Crie um programa que gerencie o aproveitamento de um jogador de futebol. 
O programa vai ler o nome do jogador e quantas partidas ele jogou. 
Depois vai ler a quantidade de gols feitos em cada partida. 
No final, tudo isso será guardado em um dicionário, incluindo o total de gols feitos durante o campeonato.

=end

cont = 0

dados = {}

puts "Digite o nome do jogador: "
nome_jogador = gets.chomp

puts "Digite a quantidade de partidas que ele jogou: "
partidas_jogadas= gets.chomp.to_i

while partidas_jogadas > cont
  cont += 1
  puts "Digite o quantidades de gols feitos na partida #{cont}: "
  dados[:gols] = gets.chomp.to_i

  dados[:gols] += dados[:gols]
end

puts dados[:gols]

