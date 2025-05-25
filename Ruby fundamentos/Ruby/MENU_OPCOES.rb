puts "=-=-=-=" * 8
puts "Bem-vindo ao menu da calculadora"
puts "=-=-=-=" * 8

valor = 0 

while valor = 0

    puts "Digite o primeiro: "
    valor1 = gets.chomp.to_f
    puts "Digite o segundo: "
    valor2 = gets.chomp.to_f
    puts "Qual operação você deseja realizar? \n [1]Somar\n [2]Multiplicar\n [3]Maior número digitado\n [4]Novos númeors\n [5]Sair do programa\n", "=-=-" * 6
    opcoes = gets.chomp

    if "1".include?(opcoes)   
        soma = valor1 + valor2
        puts "A soma dos valores foi #{soma}!"
        break  
    elsif "2".include?(opcoes)
        multiplicacao = valor1 * valor2
        puts "A multiplicação dos valores foi #{multiplicacao}"
        break
    elsif "3".include?(opcoes)
        puts valor1 > valor2 ? "O maior valor digitado é #{valor1}" : "O maior valor digitado é #{valor2}"
        break
    elsif "4".include?(opcoes)
        puts "Digite os novos valores, primeiro valor: "
        valor1 = gets.chomp.to_f
        puts "Digite os novos valores, segundo valor: "
        valor2 = gets.chomp.to_f
        puts "Qual operação você deseja realizar? \n [1]Somar\n [2]Multiplicar\n [3]Maior número digitado\n [4]Sair do programa\n", "=-=-" * 6
        opcoes = gets.chomp
        if "1".include?(opcoes)
            soma = valor1 + valor2
            puts "A soma dos valores foi #{soma}!"
            break     
        elsif "2".include?(opcoes)
            multiplicacao = valor1 * valor2
            puts "A multiplicação dos valores foi #{multiplicacao}"
            break
        elsif "3".include?(opcoes)
            puts valor1 > valor2 ? "O maior valor digitado é #{valor1}" : "O maior valor digitado é #{valor2}"
            break
        elsif "4".include?(opcoes)
            puts "Você escolheu sair..."
            break
        end
    elsif "5".include?(opcoes)
        puts "Você escolheu sair..."
        break
    end
end

puts "=-=-=-=" * 8
