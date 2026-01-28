dados = []
temp = []
count = 0

while true

    puts "Digite o seu nome: "
    dados << gets.chomp
    puts "Digite o sue peso em KG: "
    dados << gets.chomp.to_i

    count += 1

    puts dados[count]

    puts "Desejar continuar[S/N]: "
    sair = gets.chomp.upcase

    if sair.include?("N")
        break
    end

end

print dados