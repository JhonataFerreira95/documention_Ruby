require = ' date'

dados = {}

puts "Digite o seu nome: "
dados[:nome] = gets.chomp

puts "Digite a sua idade senhor(a) #{dados[:nome]}: "
dados[:idade] = gets.chomp.to_i

puts "Digite a o ano do seu nascimento: "
dados[:nascimento] = gets.chomp.to_i

puts "Digite o seu CTPS: "
dados[:ctps] = gets.chomp.to_i

puts dados

if dados[:ctps] != 0

  puts "Digite o primeiro ano da sua contratação: "
  dados[:contratacao] = gets.chomp.to_i
  puts "Digite o seu salários: "
  dados[:salario] = gets.chomp.to_i
  puts "Digite o seu sexo[M/F]: "
  dados[:sexo] = gets.chomp.upcase

  ano_atual = Date.today.year
  tempo_contribuicao = ano_atual - dados[:contratacao]

  if dados[:sexo] == "M"
    meta_pontos = 105
  else
    meta_pontos = 95
  end

  pontos_atuais = dados[:idade] + tempo_contribuicao

  if pontos_atuais >= metas_pontos
    puts "Parabéns #{dados[:nome]}, você já pode se aposentar!" 
  end

else
  puts "Tente novamente com um CTPS válido!"
end


