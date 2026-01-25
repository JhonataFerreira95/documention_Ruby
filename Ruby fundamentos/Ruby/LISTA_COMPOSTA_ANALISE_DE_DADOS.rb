dados = []
count = 0

while true

    puts "Digite o seu nome: "
    nome = gets.chomp
    puts "Digite o sue peso em KG: "
    peso = gets.chomp.to_f

    count += 1

    if peso < 0
      dados[count] << nome
      dados[count] << peso
      pust dados
    end

    puts "Desejar continuar[S/N]: "
    sair = gets.chomp.upcase

    if sair.include?("N")
        break
    end

end

print dados