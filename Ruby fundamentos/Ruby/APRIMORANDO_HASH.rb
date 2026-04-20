
cont = media = 0

while true

    puts "Digite o seu nome: "
    nome = gets.chomp

    puts "Quantidade de bimestre/semestre que possui: "
    quant = gets.chomp.to_i

    while quant > 0
      cont += 1
      puts "Digite a sua #{cont} nota: " 
      notas = gets.chomp.to_i
      
      if cont >= quant
        puts "Saindo..."
        media = soma_notas / 2

        puts media
        break
      end

    end



end