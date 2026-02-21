count = 0
ficha = []

while true

    count += 1

    puts "Digite o nome do aluno: "
    nome = gets.chomp
    puts "Digite a 1 do aluno: "
    nota1 = gets.chomp.to_f
    puts "Digite a 2 do aluno: "
    nota2 = gets.chomp.to_f

    media = (nota1 + nota2) / 2

    ficha.push([nome, [nota1, nota2], media])

    puts ficha

    puts "Deseja continuar[S/N]: "
    resposta = gets.chomp.upcase

    if resposta.include?("N")
        break
    end
end
