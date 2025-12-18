resposta = []

for i in 1..5
  puts "Digite a os valores: "
  resposta << gets.chomp.to_i
end

puts maior_valor, menor_valor

print "O maior valor da lista é #{resposta.max}, e o maior valor da lista é #{resposta.min}"