a = 100
b = 200

# Para verificar se a > b, b < a ou se b > a. utilizamos as condicionais.

if a > b
    puts "#{a} maior que #{b}"
else
    puts "#{b} maior que #{a}"
end


puts "Digite o seu nome do filme: "

name = gets.chomp

puts "Digite o ano de lançamento: "

ano = gets.chomp.to_i

puts "Digite a nota de classifição: "

classificacao = gets.chomp.to_f

if classificacao > 8.0 and ano > 2015
    puts "O filme #{name} é bom. Recomendo assisti-lo."
else
    puts "O filme #{} ainda não atingiu uma boa nota, por isso não recomendo."