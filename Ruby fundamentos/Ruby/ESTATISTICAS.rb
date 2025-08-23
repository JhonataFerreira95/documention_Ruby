preco = total = custam1000 = barato = 0



puts "-"*20
puts "SUPER BARATÃO"
puts "-"*20

while true

    puts "Nome do produto: "
    nome_produto = gets.chomp
    puts "Preço: R$"
    preco = gets.chomp.to_f

    puts "Deseja continuar? [S/N] "
    continuar = gets.chomp.upcase

    if continuar.include?("N")
        break
    end

end

puts "finalizado"