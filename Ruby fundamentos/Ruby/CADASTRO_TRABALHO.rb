
dados = {}

puts "Digite o seu nome: "
dados[:nome] = gets.chomp

puts "Digite a sua idade senhor(a) #{dados[:nome]}: "
dados[:idade] = gets.chomp.to_i

puts "Digite a o ano do seu nascimento: "
dados[:nascimetno] = gets.chomp.to_i

puts "Digite o seu CTPS: "
dados[:ctps] = gets.chomp.to_i

puts dados

if dados[:ctps] != 0
  puts "Digite o primeiro ano da sua contratação: "
  dados[:contratacao] = gets.chomp.to_i
  puts "Digite o seu salários: "
  dados[:salario] = gets.chomp.to_i
else
  puts "Tente novamente com um CTPS válido!"
end





