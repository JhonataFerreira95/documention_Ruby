=begin

Crie um programa que leia nome, sexo e idade de várias pessoas, guardando os dados de cada pessoa em um dicionário e todos os dicionários em uma lista. 
No final, mostre: A) Quantas pessoas foram cadastradas B) A média de idade C) Uma lista com as mulheres D) Uma lista de pessoas com idade acima da média

=end

dados = []

cont = 0

puts "Quntas pessoas quer cadastrar? "
quantidade_cadastro = gets.chomp.to_i

while quantidade_cadastro >= cont

    cadastro = {}
    
    puts "Digite o seu nome: "
    cadastro[:nome] = gets.chomp

    puts "Digtie o seu sexo[M/F]: "
    cadastro[:sexo] = gets.chomp.upcase

    

    cont += 1

end