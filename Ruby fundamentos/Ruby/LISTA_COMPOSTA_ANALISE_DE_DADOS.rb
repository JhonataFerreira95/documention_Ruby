dados = []
temp = []
count = 0
maior = menor = 0

while true

    puts "Digite o seu nome: "
    temp << gets.chomp
    puts "Digite o sue peso em KG: "
    temp << gets.chomp.to_i

    if dados.size == 0
        maior = menor = temp[1]
    else
        if temp[1] > maior
            maior = temp[1]
        end
    end

    dados.push(temp.dup)
    temp.clear

    count += 1

    puts "Desejar continuar[S/N]: "
    sair = gets.chomp.upcase

    if sair.include?("N")
        break
    end

end

print dados