dados = []
count = 0
mais_pesados = 0
nome_mais_pesado = ''
mais_leves = 0
nome_mais_leve = ''

while true

    puts "Digite o seu nome: "
    nome = gets.chomp
    puts "Digite o sue peso em KG: "
    peso = gets.chomp.to_f

    dados = [nome, peso]

    count += 1

    if peso >= 0
        peso = mais_pesados
        nome = nome_mais_pesado
    elsif peso <= mais_pesados
        peso = mais_leves
        nome = nome_mais_leve
    end

    puts "Desejar continuar[S/N]: "
    sair = gets.chomp.upcase

    if sair.include?("N")
        break
    end


end

print dados