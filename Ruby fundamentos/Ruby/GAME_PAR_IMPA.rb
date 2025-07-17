require 'securerandom' 

 jogador = par = impa = pc = 0
 opcao = ""
 opcaoPc = ""

puts "Bem vindo ao game de par ou ímpar!"


while true 

  pc = SecureRandom.random_number(0..1000)

  puts "=-=-="*8
  puts "Escolha entre par ou ímpar[I/P]: ".upcase
  opcao = gets.chomp
  puts "=-=-="*8
  
  if opcao.include?("I")

    puts "Digite um número para jogar com o computador: "
    jogador =  gets.chomp.to_i
  
  end

  opcaoPc != opcao
  puts opcaoPc

end
