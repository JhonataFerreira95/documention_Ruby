valor = cont = somaTotal = 0

puts "Digite um número(999 para parar o laço): "

while valor != 999
    valor = gets.chop.to_i
    somaTotal += valor
    cont += 1
    puts "Digite um número(999 para parar o laço): "
end

puts "Você digitou #{cont} números e a soma entre eles foi #{somaTotal}"



