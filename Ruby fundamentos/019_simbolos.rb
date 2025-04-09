# 1-O que são simbolos? 

# objetos que representam nomes de forma imutável e são armazenados em memória de forma única. 
# São prefixados com dois-pontos (:) e são frequentemente usados como chaves em hashes ou como argumentos para métodos que requerem identificadores. 

# Utilizamos o <.object_id> para atribuir um id aleatório.

puts :nome.object_id 

# 2-Reutilização de memoria com <.object_id> para a mesma variável.

puts "nome".object_id # Aqui vai atribui um valor aleatório, será alocada na mesma posição da memoria da string abaixo.

puts "nome".object_id # Aqui vai atribui um valor aleatório, será alocada na mesma posição da memoria da string acima.



