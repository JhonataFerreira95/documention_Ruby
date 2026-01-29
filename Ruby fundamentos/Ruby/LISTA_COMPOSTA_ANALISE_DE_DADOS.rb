dados = []
temp = []
count = 0
maior = menor = 0
pesado = ""
leve = ""

while true

    puts "Digite o seu nome: "
    temp << gets.chomp
    puts "Digite o sue peso em KG: "
    temp << gets.chomp.to_i

    if dados.size == 0
        maior = menor = temp[1]
        pesado = leve = temp[0]
    else
        if temp[1] > maior
            maior = temp[1]
            pesado = temp[0]
        end
        if temp[1] < menor
            menor = temp[1]
            leve = temp[0]
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

puts "A quantidade de pessoas cadastras foram #{count}, todas as pessoas cadastradas #{dados}, a pessoa mais pesada é #{pesado} com #{maior}KG e a pessoa mais leve é #{leve} com #{menor}KG"