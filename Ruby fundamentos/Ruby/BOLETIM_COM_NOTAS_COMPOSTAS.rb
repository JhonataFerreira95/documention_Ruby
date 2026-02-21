count = 0
dados = []
nome = []
nota = []

while true

    count += 1

    puts "Digite o nome do aluno: "
    dados << gets.chomp
    puts "Digite a #{nota} do aluno: "
    nota << gets.chomp.to_f

    puts "Deseja continuar[S/N]: ".upcase
    resposta = gets.chomp

    if resposta.include?("N")
        break
    end
end
