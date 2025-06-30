puts "Digite o primeiro termo: "
primeiro = gets.chomp.to_i

puts "Digite o valor da razão: "
razao = gets.chomp.to_i

termo = primeiro
cont =  1
total = 0
mais = 10

while mais != 0
    total = total + mais
    while cont <= total 
        puts "-> #{termo}!"
        termo += razao
        cont += 1
    end
    puts "Pausa! \n=-=-=-=\n"
    puts "Quantos termos você quer mostrar a mais?"
    mais = gets.chomp.to_i
end
puts "Acabou, a quantidade de termos mostrada foi #{total}!"
