=begin

Faça um programa que tenha uma função chamada ficha(), que receba dois parâmetros opcionais: 
o nome de um jogador e quantos gols ele marcou. O programa deverá ser capaz de mostrar a ficha do jogador, 
mesmo que algum dado não tenha sido informado corretamente.

=end

def ficha(nome_jogador, gols_marcados)
    
end

puts "Digite o nome do jogador: "
n = gets.chomp

puts "Digite o número de gols: "
g = gets.chomp

if g.float
  g = gets.chomp.to_i
else
  g = 0
end