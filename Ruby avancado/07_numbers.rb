# 1- para coletar números inteiros de 0..9 utilizamos o /\d+/ - corresponde a um ou mais digítos. Pode encontrar qualquer sequência contínua de dígitos.

# 2- para coletar números inteiros de 0..9 utilizamos o /-?\d+/ - corresponde a um hífin opcional. Seguido por um ou mais dígitos numéricos de 0..9.


string = "A temperatura é 25° graus celsius e o preço é 19.99."

numeros_int = string.scan(/-?\d+/)
numeros_float = string.scan(/-?\d+\.\d+/)

puts "números inteiros encontratos #{numeros_int.join(',')}"
puts "números decimais encontratos #{numeros_float.join(',')}"

# 2 - Extraindo e somando todos os números inteiros de uma string com scan

string2 = "Aizen tem 1 hogyoku, tem 300 anos e 4 selos muken"

numbers = string2.scan(/\d+/).map(&:to_i)
sum = numbers.sum

puts "Os números encontrados são #{numbers.join(',')}"
puts "A soma de todos os números é: #{sum}"
