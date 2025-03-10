# 1-Criando Hash.

mov = Hash.new # criado um hash.
puts mov.class # retorna o hash no terminal.

# Instanciando itens no hash.

movie = {"name" => "Ousama raking", "year" => "2023"} # Uma das forma de passar valores no hash.
puts movie

# Outra forma de definir a chave.

movie2 = {:name => "Solo leveling", :year => "2024"} # Outra forma para passar valores no hash é com <:>.
puts movie2 # Para o hash reconhecer os valores, é obrigatório usar os <:> ou <""> para que tudo funcione de forma perfeita.

# 2-Iterando valores (for, while e each).

# keys.

puts movie2.keys # O método keys. Imprime as chaves no terminal com o <Keys>. conseguimos recuperar as chaves.
puts movie2.values # O método keys e values. Imprime as valores no terminal com o <values>. conseguimos recuperar os valores.

# Iterando com for.

for key, value in movie2 # Recuperando valores está recuperando e exibindo os valores do hash movie2.
    puts "#{key}-#{value}" # Imprime na tela cada chave e seu valor correspondente no formato, <key> representa a chave de cada par do hash, <value> representa o valor associado a essa chave.
end

# Iterando com while.

i = 0 # Váriavel de controle.

while  i < movie2.length # Aqui o <lenght> verifica se o i é menor que o nosso hash.
    puts "#{movie2.keys[i]}-#{movie2.values[i]}" # Imprimir os valores no terminal correspondente <key> e <values>.
    i += 1 # Para que o laço não seja infinito.
end

# Interando valores com each.

movie2.each { |key, value| puts "#{key}-#{value}"} # Imprimir os valores no terminal correspondente <key> e <value>.