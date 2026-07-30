# 1- para coletar números inteiros de 0..9 utilizamos o /\d+/ - corresponde a um ou mais digítos. Pode encontrar qualquer sequência contínua de dígitos.

# 2- para coletar números inteiros de 0..9 utilizamos o /-?\d+/ - corresponde a um hífin opcional. Seguido por um ou mais dígitos numéricos de 0..9.


string = "A temperatura é 25° graus celsius e o preço é 19.99."

numeros_int = string.scan(/-?\d+/)
numeros_float = string.scan(/-?\d+\.\d+/)

puts "números inteiros encontratos #{numeros_int.join(',')}"
puts "números decimais encontratos #{numeros_float.join(',')}"
