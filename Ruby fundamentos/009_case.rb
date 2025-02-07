# Solicita que o usuário informe uma idade

puts "Informe a idade: "
idade = gets.chomp.to_i # Lê a entrada do usuário e converte para inteiro

# Estrutura de decisão para classificar a faixa etária

case idade 
  when 0..2
    puts "bebê"
  when 3..6
    puts "criança"
  when 7..12
    puts "pré-adolecente"
  when 13..18
    puts "Jovem adulto"
  else
    puts "aulto"
end

# Case geralmente é utilizado quando temos muitas condicionais, para facilitar o código.

# Observação: O uso do 'case' simplifica o código em comparação com múltiplos 'if-elsif-else'.