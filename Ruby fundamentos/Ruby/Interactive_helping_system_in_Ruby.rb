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

