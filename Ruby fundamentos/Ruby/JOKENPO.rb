require "securerandom"

itens = ["Pedra", "Papel", "Tesoura"]

computer =  SecureRandom.random_number(0..2)

puts "Sua opções são\n-=-=-=-=-=-=-=-=-\n[0]Pedra\n-----------------\n[1]Papel\n-----------------\n[2]Tesoura\n-=-=-=-=-=-=-=-=-\n"

puts "Qual é a sua jogada?"
jogador = gets.chomp.to_i

if !(0..2).include?(jogador) # Para negar qualquer entrada que não seja entre 0 e 2.
  puts "JOGADA INVÁLIDA! \n-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=--=-=-=-=-=\nTente novamente com as opções apresentadas\n-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=--=-=-=-=-=\n"
elsif computer == jogador
  puts "Empatou, o computador jogou #{itens[computer]} e o jagador jogou #{itens[jogador]}"
elsif computer > jogador
  puts "O computador venceu! O computador jogou #{itens[computer]} e o jogador jogou #{itens[jogador]}"
elsif jogador > computer
  puts "O jogador venceu! O jogadoor jogou #{itens[jogador]} e o computador jogou #{itens[computer]}"
end

puts ("-=" * 35)





