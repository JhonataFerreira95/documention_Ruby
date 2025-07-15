
numero_digitado =  tabuada = cont = 0

while true

  puts "Bem vindo a aplicação de tabuada com números variados!"
  puts "=-=-=-=-=" * 3
  puts "Digite a tabuada que deseja visualizar(Para sair digite -1): "
  numero_digitado = gets.chop.to_i
  puts "=-=-=-=-=" * 3
  if numero_digitado == -1
    break
  elsif numero_digitado
    for i in 1..10
      tabuada = i * numero_digitado
      puts tabuada
    end
  end
  cont += 1
end


puts "Programa de tabuada encerrada!\n A quantidade digite de tabuada vistam foram #{cont}"

