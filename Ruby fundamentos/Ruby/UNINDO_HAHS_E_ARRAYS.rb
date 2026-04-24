=begin

Crie um programa que leia nome, sexo e idade de várias pessoas, guardando os dados de cada pessoa em um dicionário e todos os dicionários em uma lista. 
No final, mostre: A) Quantas pessoas foram cadastradas B) A média de idade C) Uma lista com as mulheres D) Uma lista de pessoas com idade acima da média

=end

dados = []
soma_idades = 0

puts "Quantas pessoas quer cadastrar? "
quantidade = gets.chomp.to_i

quantidade.times do
  cadastro = {}

  puts "Digite o nome: "
  cadastro[:nome] = gets.chomp

  puts "Digite o sexo [M/F]: "
  cadastro[:sexo] = gets.chomp.upcase

  puts "Digite a idade: "
  cadastro[:idade] = gets.chomp.to_i

  soma_idades += cadastro[:idade]

  dados << cadastro
end


puts "\nTotal de pessoas cadastradas: #{dados.length}"


media = soma_idades.to_f / dados.length
puts "Média de idade: #{media.round(2)}"


mulheres = dados.select { |p| p[:sexo] == 'F' }
puts "\nMulheres cadastradas:"
mulheres.each { |m| puts m[:nome] }


puts "\nPessoas com idade acima da média:"
dados.each do |p|
  if p[:idade] > media
    puts "#{p[:nome]} - #{p[:idade]} anos"
  end
end