puts "Bem vindo ao aplicativo Caixa!"

saldo = 10500.to_i

loop do
  print "Escolha uma das opções abaixo: \nSaldo \nSaque \nDeposito \nSair\n----------------------\n".downcase
  opcao = gets.chomp

  case opcao
  when "sair"
    puts "Saindo . . ."
    break
  when "saque"
    if opcao == "saque"
        puts "Deseja sacar quando do seu #{saldo}?"
        saque = gets.chomp.to_i
        result = lambda { |result| saldo - saque }
        puts "Seu saque foi feito com sucesso! Dinheiro sacado #{saque}, seu saldo é #{result.call(result)}$"
        break
    end
  when "saldo"
    puts "Seu saldo é #{saldo}"
    puts "Saindo . . ."
    break
  when "deposito"
    if opcao == "deposito"
      puts "Qual o valor do deposito?"
      dep = gets.chomp.to_i
      de = lambda { |de| dep + saldo }
      puts "Seu deposito foi de #{dep}$, seu saldo atual é #{de.call(de)}$" 
      break 
    end
  end
end