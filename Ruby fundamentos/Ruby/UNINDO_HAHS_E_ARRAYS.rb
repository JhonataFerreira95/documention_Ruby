=begin

Crie um programa que leia nome, sexo e idade de várias pessoas, guardando os dados de cada pessoa em um dicionário e todos os dicionários em uma lista. 
No final, mostre: A) Quantas pessoas foram cadastradas B) A média de idade C) Uma lista com as mulheres D) Uma lista de pessoas com idade acima da média

=end

dados = []

cont = 1

idade_media = 0
acima_da_media = 0

puts "Quntas pessoas quer cadastrar? "
quantidade_cadastro = gets.chomp.to_i

while quantidade_cadastro >= cont

    cadastro = {}
    
    puts "Digite o seu nome: "
    nome = gets.chomp

    puts "Digtie o seu sexo[M/F]: "
    sexo = gets.chomp.upcase

    if cadastro[:sexo] == 'F'
        cadastro[:mulheres] = nome
        dados << cadastro[:mulheres]
    else
        cadastro[:homens] = nome
        dados << cadastro[:homens]
    end

    puts "Digite a sua idade: "
    idade = gets.chomp.to_i

    if idade >= idade_media
        idade_media = idade
        puts idade_media
    elsif acima_da_media < idade_media
        idade_media = acima_da_media
        puts acima_da_media
    elsif idade_media < acima_da_media
        acima_da_media = idade_media
        puts acima_da_media
    elsif idade <= idade
        puts "ok"
    end


    cadastro[:quantidade_cadastrados] = cont

    cont += 1

end