pesadas = []
leves = []

count = 0

while true

    puts "Digite o seu nome: "
    nome = gets.chomp
    puts "Digite o sue peso em KG: "
    peso = gets.chomp.to_f

    

    count += 1

    puts "Desejar continuar[S/N]: "
    sair = gets.chomp.upcase

    if sair.include?("N")
        break
    end

end