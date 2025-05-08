puts "Digite uma frase: ".strip
frase = gets.chomp
junto = frase.split.join("").downcase

inverso = ""

for letra in (junto.length - 1).downto(0)
  inverso += junto[letra]
end

puts "O inverso de #{frase} é #{inverso}"

puts inverso == junto ? "A palavra digitada '#{frase}' é um palíndromo" : "A plavra digitada '#{frase}' não é um palíndromo"