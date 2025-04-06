puts "Digite a sua idade para verificação de categoria: "

idade = gets.chomp.to_i

if idade < 13
  puts "Você é uma crinaça, sua idade é #{idade}"
elsif idade >= 17
  puts "Você é um adolescente, sua idade é #{idade}"
elsif idade >= 64 
  puts "Você é um adulto, sua idade é #{idade}"
elsif idade > 65
  puts "Você é idoso, sua idade é #{idade}"
end
