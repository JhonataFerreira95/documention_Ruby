preco = total = custam1000 = barato = flag = 0
item_mais_barato = " "

puts "-"*20
puts "SUPER BARATÃO"
puts "-"*20

while true

    puts "Nome do produto: "
    nome_produto = gets.chomp
    puts "Preço: R$"
    preco = gets.chomp.to_f

    if preco >= 1000
        custam1000 += 1
    end

    total += preco

    if preco > 0 and nome_produto = nome_produto
       flag = preco
       if flag <= preco and nome_produto = nome_produto
        barato = preco
        item_mais_barato = nome_produto
       end
    end

    puts "Deseja continuar? [S/N] "
    continuar = gets.chomp.upcase

    if continuar.include?("N")
        break
    end

end

puts "-"*20
puts "FIM DO PROGRAMA"
puts "-"*20

puts "O total gasto foi #{total}\n Temos #{custam1000} produto custando mais de R$1000\n O produto mais barato foi #{item_mais_barato} que custa #{barato}"