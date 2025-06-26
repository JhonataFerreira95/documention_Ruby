puts "Digite o primeiro termo: "
primeiro = gets.chomp.to_i

puts "Digite o valor da razão: "
razao = gets.chomp.to_i

termo = primeiro
cont =  1

while cont <= 10
    puts "-> #{termo}!"
    termo += razao
    cont += 1
end

puts "Acabou! \n=-=-=-=\n"
