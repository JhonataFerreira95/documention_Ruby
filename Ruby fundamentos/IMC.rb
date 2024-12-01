puts "Digite a sua altura (cm): "

var1 = gets.chomp.to_f

puts"Digite o seu pes (kg): "

var2 = gets.chomp.to_f

result = var2 / (var1/100) ** 2

puts "IMC = #{result}"