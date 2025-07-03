repeat = maior = menor = soma = 0 
encerrar = ""

while encerrar != "S"
  puts "Digite um número inteiro(EX:0, 5, 2): "
  valor = gets.chop.to_f
  soma += valor
  repeat += 1
  puts "-=-=-=-=-" * 5
  puts "Deseja encerrar?(S ou N): "
  encerrar = gets.chop.upcase
  if repeat == 1
    maior = menor = valor
  else
    if valor > maior
      maior = valor
    end
    if valor < menor
      menor = valor
    end
  end
end

media = soma / repeat

puts "Você digitou #{repeat} números e a média foi #{media}\n A soma deles foi #{soma}\n Maior valor foi #{maior} e o menor valor foi #{menor}"


