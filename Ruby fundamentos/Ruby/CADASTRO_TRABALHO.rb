
dados = {}

puts "Digite o seu nome: "
dados[:nome] = gets.chomp

puts "Digite a sua anos de senhor(a) #{dados[:nome]}: "
dados[:idade] = gets.chomp.to_i

puts "Digite a data do seus nascimetno: "
dados[:nascimetno] = gets.chomp.to_i

puts "Digite o seu CTPS: "
dados[:ctps] = gets.chomp.to_i

if dados[:ctps] != 0
  puts "Digite o primeiro ano da sua contratação: "
  dados[:contratacao] = gets.chomp.to_i
  puts "Digite o seu salários: "
  dados[:salario] = gets.chomp.to_i
end





