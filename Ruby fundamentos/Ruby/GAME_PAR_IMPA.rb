require 'securerandom' 

 cont = jogador = par = impa = pc = 0
 opcao = ""
 opcaoPc = ""

puts "Bem vindo ao game de par ou ímpar!"


while true 

  pc = SecureRandom.random_number(0..100000)

  puts "=-=-="*8
  puts "Escolha entre par ou ímpar[I/P]: "
  opcao = gets.chomp.upcase
  puts "=-=-="*8
  
  if opcao.include?("P")

    puts "=-=-="*8
    puts "Você escolheu par"
    puts "=-=-="*8

    puts "=-=-="*8
    puts "Digite um número para jogar: "
    jogador =  gets.chomp.to_i
    puts "=-=-="*8

    if jogador % 2 == 0 and pc % 2 == 1

      puts "=-=-="*8
      puts "Você jogou #{jogador} par\n PC jogou #{pc} ímpar\n Você venceu"
      puts "=-=-="*8

      if jogador % 2 == 0
        break
      end

    elsif jogador % 2 == 1 or pc % 2 == 1

      puts "=-=-="*8
      puts "Você jogou #{jogador} ímpar\n PC jogou #{pc} ímpar\n Você perdeu"
      puts "=-=-="*8

      if pc % 2 == 1 
        break
      end

    end

  elsif opcao.include?("I")

    puts "=-=-="*8
    puts "Você escolheu par"
    puts "=-=-="*8

    puts "=-=-="*8
    puts "Digite um número para jogar: "
    jogador =  gets.chomp.to_i
    puts "=-=-="*8

   if jogador % 2 == 1 and pc % 2 == 0

      puts "=-=-="*8
      puts "Você jogou #{jogador} ímpar\n PC jogou #{pc} par\n Você venceu"
      puts "=-=-="*8

      if jogador % 2 == 0
        break
      end

    elsif jogador % 2 == 1 or pc % 2 == 0

      puts "=-=-="*8
      puts "Você jogou #{jogador} ímpar\n PC jogou #{pc} ímpar\n Você perdeu"
      puts "=-=-="*8

      if pc % 2 == 0 
        break
      end

    end

  end

  cont += 1

end
