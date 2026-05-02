=begin

Faça um mini-sistema que utilize o Interactive Help do ruby. 
O usuário vai digitar o comando e o manual vai aparecer. 
Quando o usuário digitar a palavra ‘FIM’, o programa se encerrará. Importante: use cores.

=end

def ajuda(com)
  puts "\e[34m~" * 30
  puts " ACESSANDO MANUAL DO COMANDO: '#{com}'"
  puts "~" * 30 + "\e[0m"
  
  sleep 1

  system("ri #{com}")
end

loop do

  puts "\e[32m=" * 40
  puts "      SISTEMA DE AJUDA RUBY INDEX"
  puts "=" * 40 + "\e[0m"
  
  print "Função ou Classe (ou 'FIM'): "
  comando = gets.chomp
  
  if comando.upcase == 'FIM'
    puts "\e[31mATÉ LOGO!\e[0m"
    break
  else
    ajuda(comando)
  end
  
end

