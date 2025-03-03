puts "Digite a sua primeira nota: "
nota1 = gets.chomp.to_f

puts "Digita a sua segunda nota: "
nota2 = gets.chomp.to_f

media = (nota1 + nota2) / 2

if media >= 60
  puts "Sua nota é #{media}!"
elsif media < 60
  puts "Sua nota #{media}, abaixo da média!"
end
