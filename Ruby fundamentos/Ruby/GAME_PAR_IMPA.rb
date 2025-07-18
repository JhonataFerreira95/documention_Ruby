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
    puts "Você escolheu ímpar"
    puts "=-=-="*8

    puts "Digite um número para jogar com o computador: "
    jogador =  gets.chomp.to_i

    if jogador % 2 == 0 and pc % 2 == 1

      sleep 0.3
      puts "O computador jogou ímpar #{pc}\n Você jogou par #{jogador}"

    end

  elsif opcao.include?("I")

    puts "=-=-="*8
    puts "Você escolheu par"
    puts "=-=-="*8

    puts "Digite um número para jogar com o computador: "
    jogador =  gets.chomp.to_i

    if jogador % 2 == 1 and pc % 2 == 0
      
      sleep 0.3
      puts "O computador jogou par #{pc}\n Você jogou ímpar #{jogador}"

    end

  end

  cont += 1
  puts cont

end
