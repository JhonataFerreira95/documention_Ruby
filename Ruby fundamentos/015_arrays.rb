# 1-Criação de arrays.

movies = [] # Aqui inicializamos um array vázio.
puts movies.class

movies2 = Array.new # Outra forma de inicilizamos um array.
puts movies2.class

movies_test = ["Ousama Ranking", "Solo leveling"] # A estrutura de array permite que possamos adicionar múltiplos valores com tipos de dados distintos dentro de uma única estrutura.
puts movies_test

two_movies = Array.new(2, "Ousama Ranking") # Outra forma de armazena valores. Só que aqui, o primeiro parâmetro <2>, é a quantidade de itens que o array vai criar.
puts two_movies # Aqui vai ser criado 2 vezes o <"Ousama Raking"> no terminal.

# 2-Utilizando exponenciação em conjunto de array.

numbers = Array.new(5) { |x| x ** 2}  # Na primeira parte criamos um arrays com 5 posições. Na segunda criamos um blocks que define os valores do array.
puts numbers # Saida no termina vai ser de forma ordenada => [0, 1, 4, 9, 16]. Já que usamos <**>


# 3-Arrays de números

num =  Array.[](1, 2, 3) # Outra forma de definir um array no ruby.
puts num # Vai aparece no terminal de forma ordenada os índeces que foram passado no array.

num2 =  Array(1..5) # Outra forma de definir um array no ruby com operador de intervalo.
puts num2 # Vai aparece no terminal de forma ordenada os índeces que foram passado no array

# 4-Arrays cm múltiplos valores.

movie = ["Raking of king", 2021, 50.00, true] # Valores tanto como, strings, int, float ou boolean podem ser armazenado no array.
puts movie 

# 5-Iterando itens (for, while e each)

for mov in movies_test # Faremos a leitura de <movies_test> depois passar para dentro do mov.
  puts mov
end

# Iterando com while.

i = 0
while i < movies_test.length # Retorna o número total de elementos do array, o loop continuará executando enquanto i for menor que o tamanho do array.
  puts movies_test[i]
  i += 1 # incrementando para que não seja um loop infinito
end 

# Iterando com each.

movies_test.each { |a| puts a}