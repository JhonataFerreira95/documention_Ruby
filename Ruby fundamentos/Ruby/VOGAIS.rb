puts "Bem vindo ao app de conta vógais! \n---------------------------------\n"

puts "Digite alguma palavra/texto para que possamos contar a quantidade de vógais: "
texto = gets.chomp.downcase.strip

contador_vogais = 0
vogais_encontradas = ""

for i in 0...texto.length
  caractere = texto[i]
  if "aeiouáàâãéèêíìóòôõúù".include?(caractere) 
    contador_vogais += 1
    vogais_encontradas += caractere
  end
end

puts "Foram encontradas #{contador_vogais} vogais no texto."
puts "As vogais encontradas foram: #{vogais_encontradas}"
