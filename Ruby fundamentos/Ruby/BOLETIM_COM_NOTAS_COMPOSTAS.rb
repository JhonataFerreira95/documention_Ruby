count = 0
ficha = []

while true

    count += 1

    puts "Digite o nome do aluno: "
    nome = gets.chomp
    puts "Digite a #{nota}1 do aluno: "
    nota1 = gets.chomp
    puts "Digite a #{nota}2 do aluno: "
    nota2 = gets.chomp

    puts "Deseja continuar[S/N]: ".upcase
    resposta = gets.chomp

    if resposta.include?("N")
        break
    end
end
