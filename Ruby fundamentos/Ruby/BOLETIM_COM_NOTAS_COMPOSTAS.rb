count = 0
dados = []

while true
    puts "Digite o nome do aluno: "
    dados << gets.chomp
    puts "Digite a nome do aluno: "
    dados << gets.chomp.to_f

    count += 1

    puts "Deseja continuar[S/N]: ".upcase
    resposta = gets.chomp

    if resposta.include?("N")
        break
    end
end
