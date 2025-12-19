resposta = []
maior_valor = 0
menor_valor = 0
maior_posicao = 0
menor_posicao = 0

for i in 0..4
  puts "Digite a os valores: "
  resposta << gets.chomp.to_i
  if resposta[i] >= maior_valor
    maior_valor = resposta[i]
    maior_posicao = i
  end
  if resposta[i] < maior_valor
    menor_valor = resposta[i]
    menor_posicao = i
  end
end

print "O maior valor da lista é #{resposta.max} o índice do maior valor é #{maior_posicao}, e o menor valor da lista é #{resposta.min} o índice do menor valor é #{menor_posicao}"
