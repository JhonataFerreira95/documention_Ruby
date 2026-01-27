dados = []
count = 0
mais_pesados = 0
mais_leves = 0

while true

    puts "Digite o seu nome: "
    nome = gets.chomp
    puts "Digite o sue peso em KG: "
    peso = gets.chomp.to_f

    dados = [nome, peso]

    count += 1

    puts "Desejar continuar[S/N]: "
    sair = gets.chomp.upcase

    if sair.include?("N")
        break
    end


end

print dados