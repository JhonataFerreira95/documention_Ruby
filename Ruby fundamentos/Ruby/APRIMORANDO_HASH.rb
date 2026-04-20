
cont = 0
soma_notas = media = 0.0
situacao = {}

while true

    puts "Digite o seu nome: "
    situacao[:nome] = gets.chomp

    puts "Quantidade de bimestre/semestre que possui: "
    quant = gets.chomp.to_i

    while quant > 0
      cont += 1
      puts "Digite a sua #{cont} nota: " 
      notas = gets.chomp.to_i

      soma_notas += notas
      
      if cont >= quant
        puts "Saindo..."
        media = soma_notas / quant
        break
      end

    end

    situacao[:media] = media

    if media >= 7.0
      situacao[:resultado] = "Aprovado"
    else 
      situacao[:resultado] = "Reprovado"
    end

    puts "Processo concluido, desejar sair?[S/N] "
    opcao = gets.chomp.upcase

    if opcao.include?("S")
      break
    end

end

puts "Nome do aluno é #{situacao[:nome]}, sua média foi de #{situacao[:media]}, sua situação é #{situacao[:resultado]}"