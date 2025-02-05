a = 100
b = 200

# Para verificar se a > b, b < a ou se b > a. utilizamos as condicionais.

if a > b
    puts "#{a} maior que #{b}" # Se `a` for maior que `b`, essa linha será executada. 
else
    puts "#{b} maior que #{a}" # Se `a` e `b` forem iguais, essa linha será executada.
end


puts "Digite o seu nome do filme: " # Solicita ao usuário que digite o nome do filme

name = gets.chomp # Captura a entrada do usuário e remove a quebra de linha

puts "Digite o ano de lançamento: " # Solicita o ano de lançamento do filme

ano = gets.chomp.to_i # Converte a entrada para um número inteiro

puts "Digite a nota de classifição: " # Solicita a nota de classificação do filme

classificacao = gets.chomp.to_f # Converte a entrada para um número decimal (float)

# Verifica se o filme é bem avaliado e recente

if classificacao > 8.0 and ano > 2015 # Se a nota for maior que 8.0 e o filme for lançado após 2015, ele é recomendado 
    puts "O filme #{name} é bom. Recomendo assisti-lo." 
else
    puts "O filme #{} ainda não atingiu uma boa nota, por isso não recomendo." # Caso contrário, ele não é recomendado  
end