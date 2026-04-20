
cont = 0
soma_notas = media = 0.0

while true

    puts "Digite o seu nome: "
    nome = gets.chomp

    puts "Quantidade de bimestre/semestre que possui: "
    quant = gets.chomp.to_i

    while quant > 0
      cont += 1
      puts "Digite a sua #{cont} nota: " 
      notas = gets.chomp.to_i

      soma_notas += notas
      
      if cont >= quant
        puts "Saindo..."
        media = soma_notas / 2
        break
      end

    end

    



end