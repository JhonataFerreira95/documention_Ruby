resposta = []
maior_valor = 0
menor_valor = 0 

for i in 0..4
  puts "Digite a os valores: "
  resposta << gets.chomp.to_i
  if resposta[i] >= 0
    maior_valor = resposta[i]
  elsif resposta[i] < maior_valor
    menor_valor = resposta[i]
  end
  puts maior_valor, menor_valor, i
end

print "O maior valor da lista é #{resposta.max} o índice do maior valor é #{maior_valor}, e o menor valor da lista é #{resposta.min} o índice do menor valor é #{menor_valor}"
