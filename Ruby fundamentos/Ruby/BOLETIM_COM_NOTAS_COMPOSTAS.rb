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

    puts "Deseja continuar[S/N]: "
    resposta = gets.chomp.upcase

    if resposta.include?("N")
        break
    end
end

puts "-=-=" * 10
puts "Os dados obtidos #{ficha}"

while true
    puts "-=-=" * 10

    puts "Deseja as notas de qual aluno?(Digite 999 para interromper): "
    opc = gets.chomp.to_i
    
    if 999.include?(opc)
        break
    end

    if opc <= ficha.size - 1
        puts "notas de  #{ficha[opc] [0]} são #{opc[cad] [1]}"
    end
end
