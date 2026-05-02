=begin

Faça um programa que tenha uma função chamada ficha(), que receba dois parâmetros opcionais: 
o nome de um jogador e quantos gols ele marcou. O programa deverá ser capaz de mostrar a ficha do jogador, 
mesmo que algum dado não tenha sido informado corretamente.

=end

def ficha(jogador='Desconhecido', gols=0)
  puts "O jogador #{jogador} fez #{gols} no campeonato."
end

print "Digite o nome do jogador: "
n = gets.chomp

print "Digite o número de gols: "
g_input = gets.chomp

if g_input =~ /\A\d+\z/
  g = g_input.to_i
else
  g = 0
end

if n.strip.empty?
  ficha('Desconhecido', g)
else
  ficha(n, g)
end