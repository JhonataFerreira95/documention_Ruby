dados = []
count = 0

while true

    puts "Digite o seu nome: "
    nome = gets.chomp
    puts "Digite o sue peso em KG: "
    peso = gets.chomp.to_f

    if peso >= 0
      dados[count] = [nome, peso]
    end

    if peso >= dados[count]
        dados[count] = [nome, peso]
        puts "zzzzz"    
    end

    count += 1

    puts "Desejar continuar[S/N]: "
    sair = gets.chomp.upcase

    if sair.include?("N")
        break
    end

end

print dados