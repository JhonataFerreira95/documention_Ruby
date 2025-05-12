puts "Bem-vindo ao maioridade \n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\n"



for i in 1..7
  puts "Em que ano a pessoa #{i}° nasceu? "
  idade = i = gets.chomp.to_i
  maioridade = 2025 - idade 
  resultado = maioridade
  puts resultado >= 18 ? "Você tem #{maioridade} anos, seu ano de nascimento é #{idade}, assim sendo maior de idade!" : "Você tem #{maioridade} e seu ano de nascimento é #{idade} assim sendo menor de idade!"
end


