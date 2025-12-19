resposta = []
maior_valor = 0
menor_valor = 0 

for i in 0..4
  puts "Digite a os valores: "
  resposta << gets.chomp.to_i
  if resposta[i] >= 0
    maior_valor = resposta[i]
  elsif maior_valor < resposta[i]
    maior_valor = menor_valor
  end
  puts maior_valor, menor_valor
end

print "O maior valor da lista é #{resposta.max}, e o menor valor da lista é #{resposta.min}"
